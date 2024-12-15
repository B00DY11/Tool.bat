@echo off
:: Check if RunAsInvoker is already set
if "%__COMPAT_LAYER%"=="RunAsInvoker" goto :skip

:: Set RunAsInvoker only if it's not already set
Set __COMPAT_LAYER=RunAsInvoker
Start Tool.bat
goto :end

:skip
@echo RunAsInvoker already set, skipping.

:end
:: Continue with the rest of the script
ipconfig /release
