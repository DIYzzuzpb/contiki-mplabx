# -*- makefile -*-

HOST_OS_UNAME:=${shell uname}

ifndef HOST_OS
    ifeq ($(findstring CYGWIN,$(HOST_OS_UNAME)),CYGWIN)
    HOST_OS := Cygwin
    else ifeq ($(OS),Windows_NT)
    HOST_OS := Windows
    else
    HOST_OS := $(shell uname)
    endif
endif

ifndef MPLABX_CONTIKI_DIR
    MPLABX_CONTIKI_DIR:=${abspath $(CONTIKI)}
    MPLABX_OLD_PATH:=$(PATH)
endif

ifndef MPLABX_PATH_TO_IDE_BIN
    MPLABX_PATH_TO_IDE_BIN=$(PATH_TO_IDE_BIN)
endif

ifneq ($(HOST_OS),Windows)
    MPLABX_ECHO:=echo
    PATH:=$(MPLABX_PATH_TO_IDE_BIN):$(MPLABX_OLD_PATH)
    SHELL:=/bin/sh
else ifeq ($(HOST_OS),Cygwin)
    MPLABX_ECHO:=echo
    PATH:=$(MPLABX_PATH_TO_IDE_BIN):$(MPLABX_OLD_PATH)
    SHELL:=/bin/sh
else
    #Windows
    MPLABX_ECHO:=gnuecho.exe
    PATH:=${subst /,\,$(MP_CC_DIR)};$(MPLABX_OLD_PATH)
    PATH:=${subst /,\,$(MPLABX_PATH_TO_IDE_BIN)};${subst /,\,$(MPLABX_PATH_TO_IDE_BIN)/../gnuBins/GnuWin32/bin};$(PATH)
    PATH:=${subst /,\,$(MPLABX_CONTIKI_DIR)}\cpu\microchip-mplabx\tools\$(HOST_OS);$(PATH)
    SHELL:=sh.exe
    CYGWIN:=nodosfilewarning
    ${warning Windows path $(PATH)}
endif

export HOST_OS
export MPLABX_CONTIKI_DIR
export SHELL
export MPLABX_OLD_PATH
export MPLABX_PATH
export PATH
export MPLABX_ECHO
export CYGWIN


