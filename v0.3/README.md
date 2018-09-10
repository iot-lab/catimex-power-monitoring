# Catimex: Hardware

Custom developer board for measure the power consumption of a load connected in either the USB connector or in the HOUT header connector.

## Overview
This folder contains the necessary files to replicate the custom board develop for catimex project. This board has the following features:
* [STM32F103RE Microcontroller](https://www.st.com/en/microcontrollers/stm32f103re.html)
* [FT2232H USB Bridge](https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT2232H.pdf)
* [INA226 Power monitor](http://www.ti.com/product/INA226)

The board has two different power supply, one for the load (open-node) and other for the main microcontroller (control-node). In the picture below, the micro usb connector of the open node is marked in blue, while the connector for the control node is marked in a red rectangle.

In this version the jumper in 3V3 must be placed to power the control node.

<img src=img/board.png width="500">


## How to use

### Power the board
#### From a usb port
To measure the power consumption of any load, connect two micro usb ports to each connector. The control node will send the information through serial port so you need to connect this to a pc. On the other side you can power the open node from a pc usb port or any other source.

#### From an external source
If you do not want to connect the control node to a pc, you can connect a battery in the JST connector on the board and access to serial port through the pin headers exposed on the board.

### Connect the load
The load or open-node should be connected in the usb connector or in the HOUT header connector. Once plug in you should start to receive the measurement of bus voltage and current used by the board.


## Bugs
There are some features to fix for the next version of the project:
* Wrong choice of switch ISL43L210: The IC does not support 5V in its input. In the next version is important to choose another multiplexer
* Change MCU Crystal from 8MHz to 16MHz to be able to reuse the code available from the iot-lab open-nodes
* Indicate missing silkscreen names
* Modify usb connector library to improve the adherence to the board
* Change R19 0 ohm resistor to a space to join digital and analog ground
