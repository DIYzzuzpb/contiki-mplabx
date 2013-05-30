echo %MPLABX_CONTIKI_DIR%

:start
if "%1"=="" (goto :main)
for /f "tokens=* USEBACKQ" %%i in (`echo %1 ^| findstr ^"pass1^" `) do (
    set pattern=%%i
) 
echo [%pattern%]

shift
goto :start

:main

pause
