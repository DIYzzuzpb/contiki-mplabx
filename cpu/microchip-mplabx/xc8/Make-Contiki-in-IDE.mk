# -*- makefile -*-

include $(CONTIKI)/cpu/microchip-mplabx/Makefile-MPLABX-environment.mk

export TARGET
export CONTIKI


.build-impl: .build-pre
ifeq ($(HOST_OS),WINDOWS)
	${MAKE} MP_CC=$(CONTIKI)/cpu/microchip-mplabx/xc8/xc8-preprocessed.cmd -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .build-conf
else
	${MAKE} MP_CC=$(CONTIKI)/cpu/microchip-mplabx/xc8/xc8-preprocessed.sh -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .build-conf
endif
