# Spice models for power measurement boards
These spice models were used to simulate the behavior of the circuits before prototyping them. 

## About files
### cm_ad4522_A.asc
Simulates a ADA4522 based circuit. Three of them are connectd as an INA and a forth as a Salen Key filter. Was not prototyped.

### cm_ltc6102
Simulates a LTC6102 based circuit. Uses LTC6102 as first stage, it is operating out of data sheet range but still with inputs as low as 2.7V. It has a gain of x1000.

#### A v/s B
A v/s B version changes the type of low pass filter used at the output. In one case it's Salen Key 2nd order (A) and in the other a simple RC filter (B).

#### tlv272 v/S ADA4528
This deffines two ways of implementing the second gain stage and sallen-key filter (when there is one)
. Both have similar operations at different costs.

### v3_max4239_lt624X.asc
This schematic was used to simulated and verify the sallen key designed cut-off frequency and operation.