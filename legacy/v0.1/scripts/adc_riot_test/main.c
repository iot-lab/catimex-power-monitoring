#include <stdio.h>
#include <math.h>

#include "xtimer.h"
#include "timex.h"
#include "periph/adc.h"

#define BIT_R           12      // bit resolution of ADC
#define ADC_POS_REF	    3.3     // positive voltage reference of ADC
#define SHUNT_VAL       0.45    // Shunt resistor value in ohms
#define DELAY 		      2000    // every DELAY milliseconds read a value
//#define SAMPLES_ADC   400     // take SAMPLES_ADC measures a get a mean value, comment to disable

#if BIT_R == 8
  #define RES ADC_RES_12BIT
#elif BIT_R == 10
  #define RES ADC_RES_10BIT
#elif BIT_R == 12
  #define RES ADC_RES_12BIT
#endif

void pause(int mil)
{
  uint32_t now = xtimer_usec_from_ticks(xtimer_now());
  uint32_t before = now;
  while(now-before < mil*1000.0)
  {
	now = xtimer_usec_from_ticks(xtimer_now());
  }
}

uint32_t measure(adc_t line, adc_res_t RES, int samples)
{
  uint32_t sum = 0;

  for (int i = 0; i < samples; i++) {
    sum = adc_sample(line, RES) + sum;
  }
  return sum/samples;
}

int main(void)
{
    int sample = 0;

    puts("RIOT ADC peripheral driver test for current masurement.\n");
    puts("This test will sample ADC lines 0 and 1, supposed to be connected\n"
         "to a shunt resistor and make calculations for current measurement.\n\n");

    // check if there are at least 2 ADC lines available.
    if (ADC_NUMOF < 1) {
      printf("Number of ADC lines available less than 2.\n");
    }

    else
    {
      // initialize ADC lines 0 and 1
      for (int i = 0; i < 2; i++) {
          if (adc_init(ADC_LINE(i)) < 0) {
              printf("Initialization of ADC_LINE(%u) failed\n", i);
              return 1;
          } else {
              printf("Successfully initialized ADC_LINE(%u)\n", i);
          }
      }

      // check if resolution applies to both lines
      for (int i = 0; i < 2; i++)
      {
        sample = adc_sample(ADC_LINE(i), RES);
        if (sample < 0) {
            printf("ADC_LINE(%u): %i-bit resolution not applicable\n", i, BIT_R);
            return 0;
        }
      	else
      	{
      	    printf("ADC_LINE(%u) resolution: %i\n", i, BIT_R);
      	}
      }

      // Measurement calculations
      float measurement[2];
      float shuntVoltage, shuntCurrent;
      char* v[2];
      v[0] = "Vsup";
      v[1] = "Vmcu";

      // display to user if multiple samples mean is enabled
      #ifdef SAMPLES_ADC
        printf("Samples mean enabled with %i samples.\n\n", SAMPLES_ADC);
      #else
        printf("Samples mean NOT enabled.\n\n");
      #endif

      // measure!
      while(1)
      {
        for (unsigned i = 0; i < 2; i++)
        {
          #ifdef SAMPLES_ADC
            sample = measure(ADC_LINE(i), RES, SAMPLES_ADC);
          #else
            sample = adc_sample(ADC_LINE(i), RES);
          #endif

          measurement[i] = (float)sample*ADC_POS_REF/pow(2.0, BIT_R);
	        // printf("Measure ADC_LINE(%i):  %u\n", i, sample);
          printf("%s: %.4f [V]\n", v[i], measurement[i]);
        }

        shuntVoltage = measurement[0] - measurement[1];
        shuntCurrent = shuntVoltage/(float)SHUNT_VAL;
        printf("Shunt voltaje: %.4f [mV]\n", shuntVoltage*1000.0);
        printf("Shunt current: %.4f [mA]\n\n", shuntCurrent*1000.0);
        pause(DELAY);
      }
    }

    return 0;
}
