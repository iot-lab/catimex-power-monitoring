# Scripts for usage in RIOT

These scripts are intended to be used with RIOT for power measurement using the power measurement board.

### adc_riot_test
Test RIOT's peripherial ADC, using a pause function to make a read with a fixed frequency. The user can set in the script the frequency, bit resolution, etc.

### arduino_ina226
INA226 IC was used to measure current with Arduino and the INA226_ADC.ino file inside this folder.

### power_measure
Necessary scripts for power measuring using the board. Includes a main file with makefile to flash into a micro-controller (Intended to be used with RIOT) and a master.py file to read values from computer via serial communication and make calculations.
