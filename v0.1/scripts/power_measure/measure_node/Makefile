APPLICATION = measure_node

BOARD ?= nucleo32-l031

RIOTBASE=$(CURDIR)/../../../../../RIOT

FEATURES_REQUIRED = periph_adc

USEMODULE += xtimer

# Add also the shell, some shell commands
USEMODULE += shell
USEMODULE += shell_commands
USEMODULE += ps

# If nucleo include gpio definitions
ifeq ($(BOARD),nucleo32-l031)
CFLAGS += -DNUCLEO_L031
else ifeq ($(BOARD),nucleo-l152)
CFLAGS += -DNUCLEO_L152
endif


include $(RIOTBASE)/Makefile.include
