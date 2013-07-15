# -*- makefile -*-

# Environment 
MKDIR=mkdir -p
CP=cp
CCADMIN=CCadmin
RANLIB=ranlib

# build
build: .build-post

.build-post: .build-impl
# Add your post 'build' code here...

.build-pre:

# clean
clean: .clean-post

.clean-post: .clean-impl
# Add your post 'clean' code here...

.clean-pre:

# clobber
clobber: .clobber-post

.clobber-pre:
# Add your pre 'clobber' code here...

.clobber-post: .clobber-impl
# Add your post 'clobber' code here...

# all
all: .all-post

.all-pre:
# Add your pre 'all' code here...

.all-post: .all-impl
# Add your post 'all' code here...

# help
help: .help-post

.help-pre:
# Add your pre 'help' code here...

.help-post: .help-impl
# Add your post 'help' code here...

# include project implementation makefile
include nbproject/Makefile-impl.mk

# include project make variables
include nbproject/Makefile-variables.mk


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
	${MAKE} -f $(CONTIKI)/cpu/microchip-mplabx/Makefile-export-variables-for-Contiki.mk export-mplabx-variables
	${MAKE} -f $(CONTIKI)/cpu/microchip-mplabx/xc8/Makefile-grab-XC8-invocation.mk SAVE_AS=mplabx-xc8-compiler.tmp xc8-compiler-command-line
	${MAKE} -f $(CONTIKI)/cpu/microchip-mplabx/xc8/Makefile-grab-XC8-invocation.mk OBJECTFILES= OBJECTFILES_QUOTED_IF_SPACED= SAVE_AS=mplabx-xc8-linker.tmp xc8-linker-command-line
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

