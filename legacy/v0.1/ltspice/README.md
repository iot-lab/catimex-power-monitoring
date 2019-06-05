# Spice models for power measurement boards
These spice models were used to simulate the behavior of the circuits before prototyping them. 

## About files
### v1_lmp2011_lt624X.asc
Simulates a LMP2011 based circuit. Uses LMP2011 as first stage. Uses LTC2041 for second stage in both ranges. Uses LTC2040 for supply buffer stage. Uses LT3461 as DC booster 8v68 supply for opamps.

### v1_ltc2055_lt624X.asc
Simulates a LTC2055 based circuit. Uses LTC2055 as first stage. Uses LTC2041 for second stage in both ranges. Uses LTC2040 for supply buffer stage. Uses LT3461 as DC booster 7V supply for opamps.

### v1_max4239_lt624X.asc
Simulates a MAX4239 based circuit. Uses MAX4239 as first stage. Uses LTC2041 for second stage in both ranges. Uses LTC2040 for supply buffer stage.

### v2_max4239_lt624X.asc
Added tolerance of more resistors, tries other shunt value. Reorganized and added labels for nodes.

### v3_max4239_lt624X.asc
Tries other shunt value. Changes stage gains to increase CMRR. Capacitor in SHDN now is connected to ground (as it should be).
