## Power measurement boards

Until now, two board designs have been prototyped for the power measurement circuits, one based on LPM2011 op amp and the other one on MAX4239. This two IC were chosen because of their very low input offset voltage, both around 1uV or less in typical conditions. Also, both circuits in a similar fashion, this is detailed in the "How do they work" section.

Detailed design choices, specifications, BOM, versions, etc. are explained in the respective board folders.

## How do they work

### Current and voltage reading

It is very well known that for power measurement in circuits, voltage and current should be known.

Nowadays, analog-to-digital converters (ADC) are used widely to measure voltage, converting analog values in digital ones (bits), so they can be analyzed in a computer.

Current measurement is a bit harder, mainly because it's not possible to do it directly, instead, you should open the circuit, place a resistor (Shunt resistor) and, using Ohm's law, read the voltage across the Shunt to know the current.

After that, several subjects shall be considered:
- The voltage drop across the Shunt should not be too high, this can negatively impact in the supply of the circuit.

- It is better to isolate the voltage before an ADC input, these tend to produce peaks when a conversion is started changing the input impedance. A buffer amplifier stage might be placed.

- An important factor with ADC's are their least significant bit (LSB) value. That's the minimum voltage necessary to produce a reading in the ADC (one bit). It can also be considered as the ADC's resolution. The problem is that, when dealing with very low voltages, the LSB might be greater than the actual voltage that is intended to read, so the ADC will output a zero value. This can be solved by per-amplifying th ADC's input. The gain of the amplifier should be known so the actual reading can be computed.

- When dealing with very low currents, the voltage drop in the Shunt is also very low if the resistor is small. Just consider a 1 ohm resistor and 10 uA going trough it. According to Ohm's law, 10 uV will appear across the resistor leads. As it has been mentioned before, the LSB of the ADC might not be enough, so an amplifying stage should be placed. Here we have to deal with amplifiers limitations, specially input offset voltage. This is the voltage that appears between the differential inputs of the amplifiers when nothing is connected and depends among others on transistor paring in the ADC IC. A very precise op-amp should be chosen, with very low input offset voltage, like an auto-zero opamp.

- CMRR of opamp should also be considered, because for small currents the voltage across the shunt might have a very low common mode side that should be rejected. This can be solved with a configuration that produces a very high CMRR (120 dB or more) like instrumentation opamps. Never the less one must also be careful with the preición of the resistors used to define the opamp gain, as CMRR will be limited by the following expression:

<div align="center">
<a href="http://www.codecogs.com/eqnedit.php?latex=CMRR&space;=&space;\dfrac{A_d&plus;1}{4t}" target="_blank"><img src="http://latex.codecogs.com/gif.latex?CMRR&space;=&space;\dfrac{A_d&plus;1}{4t}" title="CMRR = \dfrac{A_d+1}{4t}" /></a></div>

Where Ad is the differential gain of the amplifier and t the tolerance. It has been concluded that 0.1% tolerance resistor or more are OK.

### MAX4239 and LMP2011 boards

As explained above, amplifying stages and very low input offset voltage opamps are needed. The two boards proposed here use a very low input offset opamp in a first stage with differential configuration. A second stage uses a different opamp, with bigger input voltage but less noise.

This second stage takes the output of the first stage and amplifies depending of the current range. For very low current there is a high gain amplification and for high current a low gain amplification. Both amplification configurations of the second stage are implemented with a dual opamp (LTC6241) with very low noise. After this second stage an ADC measures the voltage that can be interpreted as a current measurement.

Due to the wide range of supply voltages that can power the target circuit, an ADC reads the voltage of the supply. For isolation, a buffer reducing stage is placed at the supply. This stage lowers the voltage 1/2 times so it can be read by an ADC with 3.3V reference, therefore the circuit could also properly read 5V supply.

### Calibration

Even though this opamps have very low input voltage, with very low currents (5uA or less) the voltage drop in the shunt has the same order of magnitude as it's offset.

A set of calibration resistors are used to emulate the conversion of low current values and after establish a piecewise approximation for these voltage ranges. This is why there are 4 fixed resistor values (1k, 10k, 100k and 1M) and 4 analog switches.

There is also an analog switch that allows the flow of current trough the target circuit. The purpose of this switches is to make a calibration of the readings before using the board, by not allowing current flow trough the target circuit and connecting the resistors one by one.

### High-side current measurement and low-side current measurement

Depending of the configuration, the shunt resistor could be placed at the top, just after the supply (high-side current measurement) or at the bottom, just before ground (low-side current measurement). In this case, high-side current measurement has been chosen because it does not intervene the ground path of the circuit.
