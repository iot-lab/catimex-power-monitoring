#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>

#include "xtimer.h"
#include "timex.h"
#include "periph/adc.h"
#include "periph/gpio.h"

#include "thread.h"

#define ENABLE_DEBUG (0)
#include "debug.h"

#define SERVER_MSG_QUEUE_SIZE   (8)

#define SAMPLE_START            (0x0A)
#define SAMPLE_STOP             (0x0B)

#define DEFAULT_SAMPLE_TIME     (100UL*US_PER_MS)
#define DEFAULT_RESOLUTION      (ADC_RES_10BIT)
#define DEFAULT_OVERSAMPLE      (1)

#define MAX_SAMPLE_TIME         (1UL*US_PER_SEC)
#define MIN_SAMPLE_TIME         (10UL)

#if defined(NUCLEO_L031)
#define MCU_ENABLE_PIN           GPIO_PIN(PORT_A,12)
#define R1K                      GPIO_PIN(PORT_B,0)
#define R10K                     GPIO_PIN(PORT_B,7)
#define R100K                    GPIO_PIN(PORT_B,6)
#define R1M                      GPIO_PIN(PORT_B,1)
#elif defined(NUCLEO_L152)
#define MCU_ENABLE_PIN           GPIO_PIN(PORT_A,12)
#define R1K                      GPIO_PIN(PORT_B,0)
#define R10K                     GPIO_PIN(PORT_B,7)
#define R100K                    GPIO_PIN(PORT_B,6)
#define R1M                      GPIO_PIN(PORT_B,1)
#else
#error "GPIO mapping for this board isn't deffined, please implement it"
#endif

#define MCU_ON                   gpio_clear(MCU_ENABLE_PIN)
#define MCU_OFF                  gpio_set(MCU_ENABLE_PIN)

static char measure_stack[THREAD_STACKSIZE_DEFAULT];
static msg_t measure_msg_queue[SERVER_MSG_QUEUE_SIZE];
static kernel_pid_t measure_thread_pid = KERNEL_PID_UNDEF;

static volatile uint64_t sample_time = DEFAULT_SAMPLE_TIME;
static volatile adc_res_t adc_res = DEFAULT_RESOLUTION;
static volatile uint16_t oversample = DEFAULT_OVERSAMPLE;

gpio_t pins[5] = {MCU_ENABLE_PIN,R1K,R10K,R100K,R1M};

static void pins_init(void){
    for (int i = 0; i < 5; i++)
    {
        gpio_init(pins[i], GPIO_OUT);
    }
}

static void pins_off(void){
    for (int i = 1; i < 5; i++)
    {
        gpio_clear(pins[i]);
    }
    MCU_ON;
}

static uint16_t measure(adc_t line, adc_res_t res, int samples)
{
    uint64_t sum = 0;

    for (int i = 0; i < samples; i++) {
        sum += adc_sample(line, res);
    }

    return (uint16_t) sum/samples;
}

static void sample_all(void)
{
    uint16_t value;

    printf("-data- ");
    for (int i = 0; i < 3; i++)
    {
        value = measure(ADC_LINE(i), adc_res, oversample);
        printf("%d ", value);
    }
    printf("\n");

    xtimer_usleep(sample_time);
}

static void *_measure_thread(void *args)
{
    (void) args;
    msg_init_queue(measure_msg_queue, SERVER_MSG_QUEUE_SIZE);
    msg_t msg;

    while (1) {
        msg_receive(&msg);

        switch (msg.type)
        {
            case SAMPLE_START:
                sample_all();
                msg_send_to_self(&msg);
                DEBUG("measure_node: sampling:\n");
                break;
            case SAMPLE_STOP:
                msg_try_receive(&msg);
                DEBUG("measure_node: stop sampling:\n");
                break;
            default:
                printf("measure_node: unknown message type: %i\n", msg.type);
                break;
        }
    }
    return NULL;
}

static void create_thread_server(void)
{
    measure_thread_pid = thread_create(measure_stack, sizeof(measure_stack),
    THREAD_PRIORITY_MAIN - 1, THREAD_CREATE_STACKTEST,
    _measure_thread, NULL, "measure_thread");
}

static void set_sample_time(uint64_t targeted_sample_time){
    if (targeted_sample_time < MAX_SAMPLE_TIME && targeted_sample_time > MIN_SAMPLE_TIME){
        sample_time = targeted_sample_time;
        printf("new sample time set\n");
    }
    else{
        printf("error: invalid sample_time\n");
    }
}

static void calibrate(void)
{
    DEBUG("calibrate: starting calibration MCU power disabled\n");
    MCU_OFF;

    printf("-calibrate- ");

    int calibration_values[5] = {0,0,0,0,0};

    for(uint8_t i = 0; i < 5; i++)
    {
        if (i == 0)
        {
          xtimer_usleep(10*US_PER_MS);
          calibration_values[i] = measure(ADC_LINE(0), adc_res, 1024);
        }
        else
        {
          gpio_set(pins[i]);
          xtimer_usleep(10*US_PER_MS);
          calibration_values[i] = measure(ADC_LINE(0), adc_res, 1024);
          gpio_clear(pins[i]);
        }
        printf("%i ", calibration_values[i]);
    }

    pins_off();
    printf("\n");
}


static int adc_setup(void){
    if (ADC_NUMOF < 3) {
        DEBUG("Number of ADC lines available less than 3.\n");
        return 1;
    }
    for (int i = 0; i < 3; i++) {
        if (adc_init(ADC_LINE(i)) < 0) {
            printf("Initialization of ADC_LINE(%u) failed\n", i);
            return 1;
        } else {
            printf("Successfully initialized ADC_LINE(%u)\n", i);
        }
    }
    return 0;
}

static int set_adc_res(uint8_t targeted_adc_res){

    adc_res_t res;

    switch (targeted_adc_res)
    {
        case 6:
            res = ADC_RES_6BIT;
            break;
        case 8:
            res = ADC_RES_8BIT;
            break;
        case 10:
            res = ADC_RES_10BIT;
            break;
        case 12:
            res = ADC_RES_12BIT;
            break;
        case 14:
            res = ADC_RES_14BIT;
            break;
        case 16:
            res = ADC_RES_16BIT;
            break;
        default:
            printf("measure:node unsupported adc_res \n");
            return 1;
            break;
    }

    int sample = adc_sample(ADC_LINE(0), res);

    if (sample < 0) {
        printf("measure_node: adc resolution  %i not applicable\n", targeted_adc_res);
        return 1;
    }
    else
    {
        printf("measure_node: adc resolution %i\n", targeted_adc_res);
        adc_res = res;
        return 0;
    }

    (void) res;
}

int start_up(void){

    create_thread_server();
    pins_init();
    pins_off();

    return adc_setup();
}

int measure_cmd(int argc, char **argv)
{
    if (argc < 2) {
        printf("usage: %s [set|start|stop|calibrate]\n", argv[0]);
        return 1;
    }

    if (strcmp(argv[1], "start") == 0) {
        printf("Going to start measuring, \"meas stop\" ends this\n");
        xtimer_sleep(2);
        msg_t msg;
        msg.type = SAMPLE_START;
        msg_send(&msg, measure_thread_pid);
    }
    else if (strcmp(argv[1], "stop") == 0) {
        msg_t msg;
        msg.type = SAMPLE_STOP;
        msg_send(&msg, measure_thread_pid);
    }
    else if (strcmp(argv[1], "calibrate") == 0) {
        calibrate();
    }
    else if (strcmp(argv[1], "set") == 0) {
        if (argc < 3) {
            printf("usage: %s set [res|freq]\n", argv[0]);
            return 1;
        }
        if (strcmp(argv[2], "res") == 0) {
            if (argc < 4) {
                printf("usage %s set res <ADC_RES>\n", argv[0]);
                return 1;
            }
            set_adc_res(atoi(argv[3]));
        }
        else if (strcmp(argv[2], "freq") == 0) {
            if (argc < 4) {
                printf("usage %s set freq <sample_time usec>\n", argv[0]);
                return 1;
            }
            set_sample_time(atoi(argv[3]));
        }
        else {
            printf("error: invalid command\n");
        }
    }
    else {
        printf("error: invalid command\n");
    }

    return 0;
}
