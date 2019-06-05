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

### Power Supply and Start-up Considerations
The board available connectors are:
* USBCN : USB connector for the control node. If connected the control node is power up and you will be able to receive through serial console.
* USBON : USB connector for power up and interact with any node connected, in this case the open node.
* USB : USB port to connect a external node, as in this case the open node
* HOUT : Header to power an external node (open node) from a header connector instead of using the USB port above.
* BAT : Header connector to plug any external battery for the open node, instead of use USBON connection.
* BAT-JST : JST connector to plug in an external battery
* 3V3_IN : Feed the control node from the on-board voltage regulator and USBCN. A jumper has to be connecting both pins in order to power the control node from USB port. Note: This was build for development purposes.

The pinout configuration is in the image below:

<img src=img/pinout.png width="500">

## Need features
From the different test made, there are the following missing features:
* Add 2 LEDs to the board
* Add an OFF state for power the open node
* Match I2C port for INA226 with current in FIT IoTLab and the ALERT interrupt pin
* Add a battery charger
* Be able to put a 802.15.4 radio on top
* Expose same pins as the control node in FIT
* Be able to measure voltage of battery
