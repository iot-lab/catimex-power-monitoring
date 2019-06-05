# Current measurement board based on ADA4522

This version of the measurement board uses an ADA4522 opamp. This opamp was chosen for its CMRR, Low voltage drift, low offset voltage and other characteristics for this application. It was used in an instrumentation amplifier configuration.

The circuit is divided in two types of currents ranges, the in amp configuration is design to measure the range 1uA - 1mA, the other one use the AD8422 precision instrumentation amplifier for the range 1mA-100mA.

### Rating
 * Low current range 1st stage gain x100
 * Low current range 2st stage gain x10
 * High current range gain x40

#### Input and Outputs
The inputs of board are:
 * Micro usb port
 * Pins for optional external power
 * Pin SW_PWR for selecting source of power for the target MCU
 * Pins SW0-SW4 to control calibration

The outputs:
 * Pins to access to both the measurement value: VoutL, VoutH, GND
 * USB port to connect target MCU  

#### Jumpers
Different jumpers are used in the board to select connect internal or external power to feed the IC.

#### Test Pads
At least three test pads were put in the board to can measure key values, as in the first stage output, output of power stages and output of regulation stage.

## Board versions
### ADA4522 v0
This version of the board is being develop and tested 
