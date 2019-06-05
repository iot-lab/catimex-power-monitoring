# ADC test in RIOT

Initial current measurement test scripts.

Avoids using xtimer_sleep since current master version (2018.01-branch) is broken for nucleo32-l031, instead custom pause(milliseconds) is used.
