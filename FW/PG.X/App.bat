@echo off

::copy .\dist\app\production\PG.X.production.unified.hex Production.hex
START "" "C:\Program Files\Microchip\xc8\v2.32\pic\bin\hexmate.exe" "-OProduction.hex" "bld.hex" "app.hex"

::copy app.hex G:

echo Done.