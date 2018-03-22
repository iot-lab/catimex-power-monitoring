BOARD ?= nucleo32-l031

RIOTBASE=$(CURDIR)/../../../RIOT

include $(RIOTBASE)/tests/Makefile.tests_common

FEATURES_REQUIRED = periph_adc

USEMODULE += xtimer
USEMODULE += printf_float

include $(RIOTBASE)/Makefile.include
