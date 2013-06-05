#!/bin/sed -f

#Some changes in port for Windows

#We are replacing shell 
s/cmd.exe/sh.exe/g

#We are replacing colons as the separator in paths
#s/:[\$][\{\(]PATH[\}\)]$/;$(PATH)/g

#We are replacing the XC8 compiler by the Wave + XC8 set.
s%^MP_CC=.*%MP_CC=$(CONTIKI)/cpu/microchip-mplabx/xc8/xc8-preprocessed.sh%g
