@echo off

:: Copy the hex file to Kit
copy debounce.hex G:
:: Clean temporary files
del /f /s /q ".\dist"
del /f /s /q ".\build"
del /f /s /q ".\debug"

echo Done.