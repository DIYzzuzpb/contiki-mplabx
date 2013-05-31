# -*- makefile -*-

include nbproject/Makefile-local-$(CONF).mk
include $(CONTIKI)/cpu/microchip-mplabx/Makefile-MPLABX-environment.mk

export TARGET
export CONTIKI


.build-pre:
	@sed -f $(CONTIKI)/cpu/microchip-mplabx/xc8/correct-Makefile.sed nbproject/Makefile-local-$(CONF).mk >Makefile-local-$(CONF).mk.tmp
	@$(RM) nbproject/Makefile-local-$(CONF).mk
	@$(CP) Makefile-local-$(CONF).mk.tmp nbproject/Makefile-local-$(CONF).mk
