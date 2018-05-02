# PCB eagle for LTC6102 based current measurement board

### Some notation
* current measuring board (CMB): the designed circuit that measure shunt voltage, and supply voltage.
* mcu: the microcontroller that is connect to the CMB, performs calibrations and converts the supply voltage and current measurements.
* node: the target mcu which pwoer consumption the CMB is measuring.

### How to use

* connect switch controllers (SW0 to SW4) to 5 different GPIO on any mcu.
* if you wan't to control what supply is used for the node connect SW_PWR
* connect the ADC_CM_LOW to and ADC pin on your mcu
* connect INA226 sda and scl to your mcu sda and scl pins, PU ressitors are supplied in this board
* alert pin of INA226 is supplied, not used by default
* power the CMB by either connecting it to it's microUSB port ore the 5V supply pin.
* bypass the targeted node power supply by either connecting it's power source to VEXT or the USB port on CMB.
* if the targeted node supply source is connected to VEXT then the node can be powered by connecting it's power input to VMCU. By default the mcu will be supplied from the USB. SW_CTRL_PWR allows the user to select which.

### Ratings:
- Power supply: 5V from USB or 5V from external supply
- First Low range stage gain x1000.
- Second Low range stage gain x11.
- Ina226 for High current range 82mA-250uA
- LTC6102 for Low current range 250ua-0.01uA

#### Input Output pins

Multiple input/output pins are supplied (There are PD resistors so calibration resistors and node supply are normally turned off). These are:

- SW_PWR: switch between VEXT and VUSB for supplying node.
- SW0: switch between calibration mode and suplying node.
- SW1-4: switches on or off calibration resistors.
- VMCU: output voltage that powers the targeted node it's short-circuited to the female type A USB.
- GND: ground
- ADC: low current value tu be read by mcu ADC
- SDA/SCL: I2C wire connection to read INA226 voltage and current values
- VEXT: external supply oint for node, eg: a battery
- +5V: 5V input/output depending on operation

#### Jumper

- A jumpers enables or not the use of the regulated 5V power supply, if not the filtered USB supply powers all the CMB IC's

#### Test Pads

Multiple test pads have been exposed for board testing

- 5V_F: filter 5V usb supply
- 5.5V: output of boost stage
- 5VR: 5 vols LDO output
- Vin: voltage that comes in to 4-terminal shunt current in pad
- Vout: voltage that comes out of 4-terminal shunt current out pad
- SHUNT+: voltage that comes form 4-terminal shunt voltage+ read pad
- SHUNT-: voltage that comes form 4-terminal shunt voltage- read pad

#### Leds

The board has 6 status Leds:

- MCU_VUSB_LED: indicates if node is supplied from USB
- MCU_EXT_LED: indicates if node is supplied from external supply
- VCALID_LED: indicates if in calibration mode
- VMCU_LED: indicates if in normal mode
- USB_LED: if usb is connected
- 5V_LED: if regultor is on

# Board versions

## LTC6102 v0

### Details

Analog and digital ground are joined in star way.

USB supply is filterd threw a ferrite, every precisión IC is also isolated threw a ferrite.

USB enclosure is connected to the digital ground.

### Prototyping and testing conclusion
