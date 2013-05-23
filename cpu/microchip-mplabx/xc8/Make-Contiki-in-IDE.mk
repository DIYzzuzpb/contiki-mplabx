# -*- makefile -*-

include $(CONTIKI)/cpu/microchip-mplabx/Makefile-MPLABX-environment.mk
-include Makefile-MPLABX-variables.mk

export TARGET
export CONTIKI
export MPLABX_MP_CC
export MPLABX_XC8_MSGFORMS

#Export current MPLABX settings into file Makefile-MPLABX-variables.mk
#That file is regenerated every build
.export-mplabx-variables:
	${MAKE} -f $(CONTIKI)/cpu/microchip-mplabx/Makefile-export-variables-for-Contiki.mk current-build-variables
	${MAKE} -f $(CONTIKI)/cpu/microchip-mplabx/xc8/Makefile-grab-XC8-invocation.mk SAVE_AS=mplabx-xc8-compiler.tmp xc8-compiler-command-line
	@${MPLABX_ECHO} -n >>Makefile-MPLABX-variables.mk "MPLABX_XC8_MSGFORMS="
	@sed -f $(CONTIKI)/cpu/microchip-mplabx/xc8/XC8-msg-formats.sed mplabx-xc8-compiler.tmp >>Makefile-MPLABX-variables.mk


.build-pre: .export-mplabx-variables

.clean-post:
	@${RM} Makefile-MPLABX-variables.mk

.build-impl: .build-pre
	${MAKE} MP_CC=$(CONTIKI)/cpu/microchip-mplabx/xc8/xc8-preprocessed.sh -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .build-conf
