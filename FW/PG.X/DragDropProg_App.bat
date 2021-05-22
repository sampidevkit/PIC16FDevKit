@echo off

copy .\dist\app\production\PG.X.production.unified.hex Bootloader_Application.hex
copy app.hex G:

echo Done.