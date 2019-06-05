# PCB eagle for current measurement board


This folder contains the eagle files for v0.2 current measurement board. It contains two options for the circuit:

* LTC6102 based circuit measurement
* ADA4522 based circuit measurement

This version only contains the circuit for measure the current, does not have a mcu inside or any control for the usb hub. It has different pins and test pads to access and control the behavior of the board, as the calibration stage, the output of the stages, the power management among others.

## Input and Outputs
The inputs of this version of the board control different areas which can be access through:
 * Micro usb port
 * Pins for optional external power
 * Pin SW_PWR for selecting source of power for the target MCU
 * Pins SW0-SW4 to control calibration

The output depends of the specific version of the board, but in general terms it contains:
 * Pins to access to the measurement value
 * USB port to connect target MCU  

## How to Use
For use this board you need a external mcu that can read the adc value from the output and can control the different input of the system
