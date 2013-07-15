# -*- makefile -*-

include nbproject/Makefile-impl.mk
# include project make variables
include nbproject/Makefile-variables.mk
include nbproject/Makefile-local-$(CONF).mk
IGNORE_LOCAL=TRUE
include nbproject/Makefile-$(CONF).mk

include $(CONTIKI)/cpu/microchip-mplabx/Makefile-MPLABX-environment.mk

#Variables for current build
mplabx_current_variables_list:=PROJECTNAME CONF\
PATH_TO_IDE_BIN MP_JAVA_PATH\
MP_CC MP_AS MP_LD MP_AR DEP_GEN\
MP_CC_DIR MP_AS_DIR MP_LD_DIR MP_AR_DIR\
MP_PROCESSOR_OPTION MP_PROCESSOR_OPTION_LD\
IMAGE_TYPE OBJECTDIR DISTDIR RM MV MKDIR FIXDEPS\
FINAL_IMAGE

MPLABX_CURRENT_VARIABLES_FILE:=Makefile-MPLABX-variables.mk

define print_variable
@${MPLABX_ECHO}>>$(MPLABX_CURRENT_VARIABLES_FILE) $(1)

endef

mplabx_print_variables:=${foreach mplabx_variable,$(mplabx_current_variables_list),${call print_variable,MPLABX_$(mplabx_variable)=$($(mplabx_variable))}}

export-mplabx-variables:
	@${MPLABX_ECHO} > $(MPLABX_CURRENT_VARIABLES_FILE) "#Generated Makefile - do not edit!"
	@${MPLABX_ECHO} -n >> $(MPLABX_CURRENT_VARIABLES_FILE) "#"
	-@date  >> $(MPLABX_CURRENT_VARIABLES_FILE)
	@${MPLABX_ECHO} >> $(MPLABX_CURRENT_VARIABLES_FILE) 
	@${MPLABX_ECHO} >> $(MPLABX_CURRENT_VARIABLES_FILE) "#Variables for project $(PROJECTNAME), configuration $(CONF)"
	@${MPLABX_ECHO} >> $(MPLABX_CURRENT_VARIABLES_FILE) "#Target $(TARGET), image type $(IMAGE_TYPE)"
	@${MPLABX_ECHO} >> $(MPLABX_CURRENT_VARIABLES_FILE) "MPLABX_ECHO=${MPLABX_ECHO}"
	@$(mplabx_print_variables)
	@${MPLABX_ECHO} >> $(MPLABX_CURRENT_VARIABLES_FILE)

