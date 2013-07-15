
#XC8 compiler doesn't support variadic macros.
#This script does partial preprocessing before XC8 compiler.
#The Wave preprocessor works in C99 mode and expands variadic macros.

wave_args=" "
xc8_args=" "
output_file=" "
pass1_option=0

while [ $# -gt 0 ] 
do
#We are quoting arguments with space inside.
any_space=`expr "$1" : '.*[ ]'`

#We are looking for headers paths.
include_path_option=`expr "$1" : '-I'`


#We are looking for the output file name.
output_file_option=`expr "$1" : '-[oO]'`

#Some arguments we must reject.
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
  if [ "$any_space" -eq 0 ]
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

HTC_ERR_FORMAT="%f:%l: error: %s"
HTC_WARN_FORMAT="%f:%l: warning: %s"
HTC_MSG_FORMAT="%f:%l: advisory: %s"

#export HTC_ERR_FORMAT
#export HTC_WARN_FORMAT
#export HTC_MSG_FORMAT


if [ `expr "$HOST_OS" : 'Windows'` -ne 0  ] ; then
    xc8_exe="xc8.exe"
else
    xc8_exe="xc8"
fi

wave_args="-D__18CXX -DHI_TECH_C $wave_args"

if [ "$pass1_option" -ne 0 ] ; then
    #Compiling step, we are preprocessing.
    #The result of partial preprocessing is saved as C source file
    $MPLABX_CONTIKI_DIR/cpu/microchip-mplabx/tools/$HOST_OS/wave-cpp-xc8.exe --c99  $wave_args -o $output_file.c $input_file  && \
    $xc8_exe --ERRFORMAT="$HTC_ERR_FORMAT" --WARNFORMAT="$HTC_WARN_FORMAT" --MSGFORMAT="$HTC_MSG_FORMAT" $xc8_args -o$output_file $output_file.c
    if [ "$?" -ne 0 ] ; then
        exit 1
    fi
else
    #Linking step, don't preprocess
    $xc8_exe --ERRFORMAT="$HTC_ERR_FORMAT" --WARNFORMAT="$HTC_WARN_FORMAT" --MSGFORMAT="$HTC_MSG_FORMAT" $xc8_args -o$output_file $input_file
    if [ "$?" -ne 0 ] ; then
        exit 1
    fi
fi

