# -*- makefile -*-

$(warning Jestem w makefile od CPU   PATH $(PATH))

include Makefile-MPLABX-variables.mk
include $(CONTIKI)/cpu/microchip-mplabx/Makefile-MPLABX-environment.mk


#We are moving Contiki OBJECTDIR inside MPLABX build directory
ifeq (${wildcard $(MPLABX_OBJECTDIR)/$(OBJECTDIR)},)
    DUMMY := ${shell ${MPLABX_MKDIR} $(MPLABX_OBJECTDIR)}
    DUMMY := ${shell mv $(OBJECTDIR) $(MPLABX_OBJECTDIR)}
endif

OBJECTDIR:=$(MPLABX_OBJECTDIR)/$(OBJECTDIR)

oname = ${patsubst %.c,%.p1,${patsubst %.S,%.o,$(1)}}

CONTIKI_OBJECTFILES = ${addprefix $(OBJECTDIR)/,${call oname, $(CONTIKI_SOURCEFILES)}}

PROJECT_OBJECTFILES = ${addprefix $(OBJECTDIR)/,${call oname, $(PROJECT_SOURCEFILES)}}



CONTIKI_CPU_DIRS = . sys net net/mac
CONTIKI_SOURCEFILES += #mtarch.c #rtimer-arch.c #elfloader-stub.c

### Executables definitions
ifeq ($(HOST_OS),Windows)
CC =xc8.exe
LD =xc8.exe
AS =xc8.exe
AR =xc8.exe
else
CC =$(MPLABX_MP_CC)
LD =$(MPLABX_MP_LD)
AS =$(MPLABX_MP_AS)
AR =$(MPLABX_MP_CC)
endif

AROPTS = --chip=$(MPLABX_MP_PROCESSOR_OPTION) --OUTPUT=lpp

CFLAGS += -I$(CONTIKI)/cpu/microchip-mplabx/MAPLv2013-02-15/Include -I$(CONTIKI)/cpu/microchip-mplabx

### Compilation rules

%.so: $(OBJECTDIR)/%.o
	$(LD) -shared -o $@ $^


CUSTOM_RULE_C_TO_OBJECTDIR_O = 1


HTC_ERR_FORMAT="%f:%l: error: %s"
HTC_WARN_FORMAT="%f:%l: warning: %s"
HTC_MSG_FORMAT="%f:%l: advisory: %s"

WAVE:=$(MPLABX_CONTIKI_DIR)/cpu/microchip-mplabx/tools/$(HOST_OS)/wave-cpp-xc8.exe

$(OBJECTDIR)/%.p1: %.c nbproject/Makefile-$(MPLABX_CONF).mk
	@${MPLABX_MKDIR} ${OBJECTDIR} 
	@${MPLABX_RM} $@.d
	${WAVE} --c99 $(CFLAGS) $(DEFINES) -o$@.c $<
	${CC} --errformat=$(HTC_ERR_FORMAT) --warnformat=$(HTC_WARN_FORMAT) --msgformat=$(HTC_MSG_FORMAT) $(MPLABX_XC8_COMPILER_ARGS) $(CFLAGS) $(DEFINES) -o$@ $@.c
	@-${MPLABX_MV} ${patsubst %.p1,%.d,$@} $@.d
	@${MPLABX_FIXDEPS} $@.d $(SILENT) -rsi ${MPLABX_MP_CC_DIR}/../  


CUSTOM_RULE_C_TO_O = 1
%.o: %.c


CUSTOM_RULE_C_TO_CE = 1
%.ce.o: %.c


CUSTOM_RULE_C_TO_CO = 1
%.co.o: %.c


CUSTOM_RULE_LINK =1
%.$(TARGET).$(MPLABX_OUTPUT_SUFFIX): %.co.o $(PROJECT_OBJECTFILES) $(PROJECT_LIBRARIES) contiki-$(TARGET).lpp  ${warning OUTPUT_SUFFIX $(MPLABX_OUTPUT_SUFFIX)}
	$(LD) $(LINKER_SCRIPT) $(TARGET_STARTFILES) ${filter-out %.a.lib,$^} ${filter %.a.lib,$^} $(TARGET_LIBFILES) $(LDFLAGS) /m"$@.map" /o"$@.cof"

CUSTOM_RULE_ALLOBJS_TO_TARGETLIB = 1
contiki-$(TARGET).lpp: $(CONTIKI_OBJECTFILES)
	$(AR) $(AROPTS) -o$@ $^

# .PHONY: symbols.c symbols.h
ifdef CORE
symbols.c symbols.h:
	$(NM) $(CORE) | awk -f ../../tools/mknmlist > symbols.c
#	@${CONTIKI}/tools/make-symbols $(CORE)
else
symbols.c symbols.h:
	@${CONTIKI}/tools/make-empty-symbols
endif
