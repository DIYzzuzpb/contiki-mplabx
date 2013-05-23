#!/bin/sh

#XC8 compiler doesn't support variadic macros.
#This script does partial preprocessing before XC8 compiler.
#Wave preprocessor works in C99 mode and expands variadic macros.

wave_args=" "
xc8_args=" "
output_file=" "
pass1_option=0

while [ $# -gt 0 ] 
do
#We are quoting arguments with space inside.
any_spaces=`expr "$1" : '.*[ ]'`
include_path_option=`expr "$1" : '-I'`
output_file_option=`expr "$1" : '-[oO]'`
ignore_option=`expr "$1" : '--warnformat\|--errformat\|--msgformat'`

#We are looking for --pass1 and remember it
if [ "$pass1_option" -eq 0 ] ; then
    pass1_option=`expr "$1" : '--pass1'`
fi


#Last argument is the input file
if [ "$#" -eq 1 ] ; then
    input_file="$1"
    break
fi

if [ "$ignore_option" -eq 0 ]
then
  if [ "$any_spaces" -eq 0 ]
  then
    #We are looking for the output file
    if [ "$output_file_option" -ne 0 ] ; then
      output_file=`expr match "$1" '-[oO]\(.*\)'`
    else
      xc8_args="$xc8_args $1"
      #For Wave we only need -I arguments
      if [ "$include_path_option" -ne 0 ] ; then
        wave_args="$wave_args $1"
      fi
    fi
  else
    #We are looking for the output file
    if [ "$include_path_option" -ne 0 ] ; then
        output_file=`expr match "$1" '-[oO]\(.*\)'`
    else
      xc8_args="$xc8_args \"$1\""
      #For Wave we only need -I arguments
      if [ "$include_path_option" -ne 0 ] ; then
          wave_args="$wave_args \"$1\""
      fi
    fi
  fi
fi

shift
done

if [ "$pass1_option" -ne 0 ] ; then
    #Compiling step, we are preprocessing.
    #The result of partial preprocessing is saved as C source file
    $MPLABX_CONTIKI_DIR/cpu/microchip-mplabx/tools/linux-wave-cpp-xc8 --c99  $wave_args -o $output_file.c $input_file
    $MPLABX_MP_CC $xc8_args -o$output_file $output_file.c
else
    #Linking step, don't preprocess
    $MPLABX_MP_CC  $xc8_args -o$output_file $input_file
fi
