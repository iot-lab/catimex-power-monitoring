import serial

ADC_POS_REF = 3.3       # Referencia voltaje positivo ADC
ADC_RES = 12.0          # Resolucion bits del ADC
RES_CAL = [1000,10000,100000,1000000]   #Valores resistencias para calibrar
SHUNT_RESISTOR = 4.7    # Valor de la resistencia de shunt
SWITCH_RES = 0.7        # Resistencia presente en los switch analogos
LOW_CURRENT_GAIN = 197
HIGH_CURRENT_GAIN = 1.51
FIRST_STAGE_GAIN = 100
SUPPLY_STAGE_GAIN = 0.5

# Inicializar arrays para almacenar valores de calibracion
V_CAL = [0,0,0,0,0]  #[V0,V1,V2,V3,V4]
I_CAL = [0,0,0,0,0]  #[I0,I1,I2,I3,I4]

# funcion para mapear valor int del adc a decimal
def dis2dec(n):
    global ADC_POS_REF,ADC_RES
    return n*ADC_POS_REF/2**ADC_RES

# funcion que obtiene actualiza los datos de calibracion
# mic_read: array de lectura que el microcontrolador entrega para calibrar
def calibrate(mic_read):
    global V_CAL, I_CAL, RES_CAL, SHUNT_RESISTOR, SWITCH_RES
    mic_read = [int(x) for x in mic_read[0:-1]]
    V_CAL = [dis2dec(x) for x in mic_read]
    for i in range(1,len(I_CAL)):
        I_CAL[i] = mic_read[-1]/(RES_CAL[i-1]+SHUNT_RESISTOR+SWITCH_RES)



# Abrir puerto serial a microcontrolador
#s =  serial.Serial('/dev/ttyACM0')

"""
***** Obtener valores de calibracion *****

El microcontrolador toma 5 lecturas (1 sin resistencia
conectada y despues va conectando las 4 resistencias de a uno)

Al finalizar, hace printf de la forma

CALIBRATIONXXV0XXV1XXV2XXV3XXV4XXV5XXV\n

Cada Vi es un int correspondiente a la lectura de cada resistencias.
Estos deben transformarse a decimal y guardarse en V_CAL.

***** obtener alimentacion para calcular I_CAL*****

La calibracion envia al final V, una muestra del voltaje suministrado
al microcontrolador.
Usando las resistencias de calibracion se calculan las corriente que
debiesen obtenerse para cada valor:

Ii = Vsupply/Ri  , para la resistencia i

Estos se guardan en I_CAL.

"""


"""
**** comunicacion con microcontrolador ****
El microcontrolador envia constantemente informacion de la forma

READINGXXA0XXA1XXA2\n

Los valores A0, A1 y A2 son int con las mediciones hechas en los
puertos analogos A0, A1 y A2 respectivamente. Estos deben transformarse
a int (son string) y usar dis2dec para obtener el valor en decimal.
"""

line = "CALIBRATIONXX3900XX2345XX3967XX1645XX2900\n"

while True:
    #line = s.readline()
    line_list = line.split("XX")
    line_list[-1] = line_list[-1][0:-1] # quitar \n de ultimo valor
    mode = line_list[0]
    values = line_list[1:]

    if mode == "CALIBRATION":
        print(V_CAL)
        calibrate(values)
        print(V_CAL)
        line = "kk"

    elif mode == "READING":
        A0 = dis2dec(int(values[0]))    #low current
        A1 = dis2dec(int(values[1]))    #high current
        A2 = dis2dec(int(values[2]))    #supply voltage

        supplyVoltage = A2*SUPPLY_STAGE_GAIN

        if A0 > ADC_POS_REF and A1 > ADC_POS_REF:
            print("Out of range.")

        elif A0 > ADC_POS_REF:
            current = HIGH_CURRENT_GAIN*FIRST_STAGE_GAIN*A1/SHUNT_RESISTOR

        else:
            for i in range(1,len(V_CAL)):
                if A0<V_CAL[i]:
                    current = (I_CAL[i]-I_CAL[i-1])*(A0-V_CAL[i])/(V[i]-V[i-1])+I[i]
                    break
