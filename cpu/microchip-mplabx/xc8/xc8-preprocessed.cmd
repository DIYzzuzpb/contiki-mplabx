echo %MPLABX_CONTIKI_DIR%

:start
if "%1"=="" (goto :main)

set xc8_args=""
set wave_args=""
set any_space="0"
set include_path_option="0"
set output_file_option="0"
set ignore_option="0"
set pass1_option="0"


:: We are quoting arguments with space inside.



for /f "tokens=* USEBACKQ" %%i in (`echo %1 ^| findstr /c:^"^ ^" `) do (
    set any_space=%%i
	echo %any_space%
) 

:: We are looking for headers paths.

for /f "tokens=* USEBACKQ" %%i in (`echo %1 ^| findstr /b /c:^"-I^" `) do (
    set include_path_option=%%i
	echo %include_path_option%
)

:: We are looking for tje output )le name.

for /f "tokens=* USEBACKQ" %%i in (`echo %1 ^| findstr /b /i /c:^"-o^" `) do (
    set output_file_option="1"
)

:: Some arguments we must reject.

for /f "tokens=* USEBACKQ" %%i in (`echo %1 ^| findstr /b /i /c:^"--warnformat^" /c:^"--errformat^" /c:^"--msgformat^"`) do (
    set ignore_option="1"
)

:: We are looking for --pass1 and remember it
for /f "tokens=* USEBACKQ" %%i in (`echo %1 ^| findstr /b /i /c:^"-pass1^" `) do (
    set pass1_option="1"
)

::    #We are looking for the output file
    if %output_file_option%=="1" (
      set output_file="%1"
    ) else (
      set xc8_args="%xc8_args% %1"
::      #For Wave we only need -I arguments
      if %include_path_option%=="1" (
        set wave_args="%wave_args% %1"
      )
    )  

pause

shift
goto :start

:main

pause
