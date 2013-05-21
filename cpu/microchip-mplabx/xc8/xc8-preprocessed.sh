#!/bin/sh

#XC8 compiler doesn't support variadic macros.
#This script does partial preprocessing before XC8 compiler.
#Wave preprocessor works in C99 mode and expands variadic macros.


wave_args=" "
xc8_args=" "
output_file_arg=" "

while [ $# -gt 0 ] 
do
#We are quoting arguments with space inside.
any_spaces=`expr "$1" : '.*[ ]'`
include_path_option=`expr "$1" : '-I'`
output_file_option=`expr "$1" : '-[oO]'`


if [ "$any_spaces" -eq 0 ] ; then
    xc8_args+="$1 "
    #For Wave we only need -I arguments
    if [ "$include_path_option" -ne 0 ] ; then
      wave_args+="$1 "
    fi
    #We are looking for the output file
    if [ "$output_file_option" -ne 0 ] ; then
      output_file_arg="$1"
    fi
else
    xc8_args+="\"$1\" "
    #For Wave we only need -I arguments
    if [ "$include_path_option" -ne 0 ] ; then
        wave_args+="\"$1\" "
    fi
    #We are looking for the output file
    if [ "$include_path_option" -ne 0 ] ; then
        output_file_arg="\"$1\""
    fi
fi

#Last argument is the input file
if [ "$#" -eq 1 ] ; then
    input_file="$1"
fi

shift
done


#The result of partial preprocessing is saved as C source file
wave_args+="$output_file_arg"
wave_args+=".c"

./wave-cpp-xc8.exe --c99 $wave_args $input_file
xc8 $xc8_args 
