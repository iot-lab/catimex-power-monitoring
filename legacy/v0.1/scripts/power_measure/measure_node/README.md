## Measure node code

This directory contains all files required to generate the bin for the measure node. This code is RIOT based and assumes RIOT to be at the following location: "$(CURDIR)/../../../../RIOT".

#### Requirements

* RIOT installed at "$(CURDIR)/../../../../RIOT", if not change in Makegile
* [RIOT](https://github.com/RIOT-OS/Tutorials) & dependencies installed, usefull install [script](https://github.com/jia200x/RIOT-scripts)
* nucleo-l031 or any board with at least 3 ADC pins and 5 GPIO.
* [current_meas_board](https://github.com/jpfutalef/Current-Measurement-Board/tree/master/boards/PCB)

####  How to use
To program, flash compile run ```make clean all -j flash term```. This opens up a serial terminal, type ```help``` to view available commands.

Calibration functions are designed to work with master.py, it doesn't adjust read values locally but delegates this burden to it's serial interlocutor.

For now the only supported board is nucleo-l031, but only in reason of the defined GPIO and adc pins, this can be added manually to the code.

#### Brief explanation

This is the basic flow established by the code:

    1.- Checks if valid gpio, adc lines, etc..
    2.- Turns of calibration resistors, enables MCU power.
    3.- Starts shell
        3.1.- Calibrate: ```meas calibrate```, prints calibrations results to terminal, for this it has to turn off MCU, and sequentially enable and measure current for each calibration resistor.
        3.2.- Read: ```meas start```, start reading from both current ranges (high & low) and supply voltage.
        3.3- Set: sample frequency and ADC resolution can be changes by calling ```meas set freq|res```
