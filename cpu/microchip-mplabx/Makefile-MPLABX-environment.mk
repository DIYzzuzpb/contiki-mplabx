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

ifneq ($(HOST_OS),Windows)
    MPLABX_ECHO:=echo
    PATH:=$(MPLABX_PATH_TO_IDE_BIN):$(MPLABX_OLD_PATH)
else ifeq ($(HOST_OS),Cygwin)
    MPLABX_ECHO:=echo
    PATH:=$(MPLABX_PATH_TO_IDE_BIN):$(MPLABX_OLD_PATH)

else
    #Windows
    MPLABX_ECHO:=gnuecho.exe
    PATH:=${subst /,\,$(MPLABX_CONTIKI_DIR)}\..\contiki-mplabx\cpu\microchip-mplabx\tools;${subst /,\,$(MPLABX_PATH_TO_IDE_BIN)};$(MPLABX_OLD_PATH)
    SHELL:=sh.exe
endif

export HOST_OS
export MPLABX_CONTIKI_DIR
export SHELL
export MPLABX_OLD_PATH
export PATH
export MPLABX_ECHO

