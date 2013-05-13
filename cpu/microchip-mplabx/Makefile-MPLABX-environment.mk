# -*- makefile -*-

ifndef HOST_OS
  ifeq ($(OS),Windows_NT)
    HOST_OS := Windows
  else
    HOST_OS := $(shell uname)
  endif
endif

ifndef MPLABX_CONTIKI_DIR
    MPLABX_CONTIKI_DIR:=${abspath $(CONTIKI)}
    MPLABX_OLD_PATH:=$(PATH)
endif

ifeq ($(HOST_OS),Windows)
    MPLABX_ECHO:=gnuecho.exe
    PATH:=${subst /,\,$(MPLABX_CONTIKI_DIR)}\tools\cygwin;${subst /,\,$(MPLABX_PATH_TO_IDE_BIN)};$(MPLABX_OLD_PATH)
    SHELL:=sh.exe
else
    MPLABX_ECHO:=echo
    PATH:=$(MPLABX_PATH_TO_IDE_BIN):$(MPLABX_OLD_PATH)
endif

export HOST_OS
export MPLABX_CONTIKI_DIR
export SHELL
export MPLABX_OLD_PATH
export PATH
export MPLABX_ECHO

