# -*- makefile -*-

ifdef CONTIKI_NO_NET
    export CONTIKI_NO_NET
endif

include $(CONTIKI)/cpu/microchip-mplabx/Makefile-MPLABX-environment.mk

ifeq ($(TARGET),)
  -include Makefile.target
  ifeq ($(TARGET),)
    ${info TARGET not defined, using target $(CONF)}
    TARGET=$(CONF)
  else
    ${info using saved target '$(TARGET)'}
  endif
endif

export TARGET
export CONTIKI

#Export current MPLABX settings into file Makefile-MPLABX-variables.mk
#That file is regenerated every build
.export-mplabx-variables:
	${MAKE} -f $(CONTIKI)/cpu/microchip-mplabx/Makefile-export-variables-for-Contiki.mk current-build-variables
	${MAKE} -f $(CONTIKI)/cpu/microchip-mplabx/xc8/Makefile-grab-XC8-invocation.mk SAVE_AS=mplabx-xc8-compiler.tmp xc8-compiler-command-line
	${MAKE} -f $(CONTIKI)/cpu/microchip-mplabx/xc8/Makefile-grab-XC8-invocation.mk OBJECTFILES= OBJECTFILES_QUOTED_IF_SPACED= SAVE_AS=mplabx-xc8-linker.tmp xc8-linker-command-line
	@${MPLABX_ECHO} -n >>Makefile-MPLABX-variables.mk "MPLABX_XC8_COMPILER_ARGS="
	@sed -f $(CONTIKI)/cpu/microchip-mplabx/xc8/clean-XC8-invocation.sed mplabx-xc8-compiler.tmp >>Makefile-MPLABX-variables.mk
	@${MPLABX_ECHO} -n >>Makefile-MPLABX-variables.mk "MPLABX_XC8_LINKER_ARGS="
	@sed -f $(CONTIKI)/cpu/microchip-mplabx/xc8/clean-XC8-invocation.sed mplabx-xc8-linker.tmp >>Makefile-MPLABX-variables.mk
	@${MPLABX_ECHO} -n >>Makefile-MPLABX-variables.mk "MPLABX_XC8_MSGFORMS="
	@sed -f $(CONTIKI)/cpu/microchip-mplabx/xc8/XC8-msg-formats.sed mplabx-xc8-compiler.tmp >>Makefile-MPLABX-variables.mk
	@${MPLABX_ECHO} -n >>Makefile-MPLABX-variables.mk "MPLABX_XC8_COMPILER_ARGS="
	@sed -f $(CONTIKI)/cpu/microchip-mplabx/xc8/clean-XC8-invocation.sed mplabx-xc8-compiler.tmp >>Makefile-MPLABX-variables.mk
	@${MPLABX_ECHO} -n >>Makefile-MPLABX-variables.mk "MPLABX_XC8_LINKER_ARGS="
	@sed -f $(CONTIKI)/cpu/microchip-mplabx/xc8/clean-XC8-invocation.sed mplabx-xc8-linker.tmp >>Makefile-MPLABX-variables.mk
	#${RM} *.tmp 

.build-pre: contiki-$(TARGET).lpp 

contiki-$(TARGET).lpp: nbproject/Makefile-$(CONF).mk .export-mplabx-variables
	${MAKE} -f $(CONTIKI)/Makefile.include contiki-$(TARGET).lpp

.clean-post:
	@${RM} -r dist/$(CONF)
	@${RM} -r build/$(CONF)
	@${RM} Makefile-MPLABX-variables.mk
	${MAKE} -f $(CONTIKI)/Makefile.include clean

