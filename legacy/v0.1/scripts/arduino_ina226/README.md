## Simple INA226 test

This file contains a library to test INA226. This IC was initially considered to measure current, voltage and power.

### Benefits of INA226

The ina226 has everything integrated into 1 IC (current measuring circuit, ADC & i2c interface) which makes it easy to connect and setup.

### Limitations of INA226

The fact that it only has an integrated ADC limits the resolution for this IC to the defined gain for the single transimpedance amplifier stage. For example assuming 5V supply for the ADC and a max current on 100mA max resolution would be of 15,23 uA/LSB. Plus the voltage input range is fixed at -81.8175 mV to 81.92 mV this limits the shunt resistor value.

Although having great features we miss in this IC the possibility to connect an extra gin stage to have better resolution for lower current ranges, this is why this IC was finally discarded.
