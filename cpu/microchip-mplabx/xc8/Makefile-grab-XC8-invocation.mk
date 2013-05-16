# -*- makefile -*-

include nbproject/Makefile-impl.mk
include nbproject/Makefile-variables.mk
include nbproject/Makefile-local-$(CONF).mk
IGNORE_LOCAL:=TRUE
include nbproject/Makefile-$(CONF).mk

include $(CONTIKI)/cpu/microchip-mplabx/Makefile-MPLABX-environment.mk

MP_CC=$(CONTIKI)/cpu/microchip-mplabx/xc8/fake-xc8.sh >$(SAVE_AS)

MV=${MPLABX_ECHO}
MKDIR=${MPLABX_ECHO}
RM=${MPLABX_ECHO}
FIXDEPS=${MPLABX_ECHO}


#We get any file and spy, how MPLABX compile it.
FIRST_OBJECT_FILE:=${word 1,$(OBJECTFILES)}

.PHONY: xc8-compiler-command_line
xc8-compiler-command-line: $(FIRST_OBJECT_FILE)

.PHONY: xc8-linker-command-line
xc8-linker-command-line: $(FINAL_IMAGE)

