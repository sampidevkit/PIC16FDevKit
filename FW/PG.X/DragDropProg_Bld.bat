@echo off

copy .\dist\app_release\production\PG_APP.X.production.unified.hex Bootloader_Application.hex
copy app.hex G:

echo Done.