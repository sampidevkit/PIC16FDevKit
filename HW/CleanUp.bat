@echo off
echo Removing *.workspace files...
del *.workspace  /f /q /s
echo.

echo Removing *.pdsbak files...
del *.pdsbak /f /q /s
echo.

echo Removing *.tre files...
del *.tre /f /q /s
echo.

echo Removing *.cof files...
del *.cof /f /q /s
echo.

echo Removing *.ccspjt files...
del *.ccspjt /f /q /s
echo.

echo Removing *.esym files...
del *.esym /f /q /s
echo.

echo Removing *.xsym files...
del *.xsym /f /q /s
echo.

echo Removing *.STA files...
del *.STA /f /q /s
echo.

echo Removing *.sym files...
del *.sym /f /q /s
echo.

echo Removing *.lst files...
del *.lst /f /q /s
echo.

echo Removing *.err files...
del *.err /f /q /s
echo.

echo Removing *.PJT files...
del *.PJT /f /q /s
echo.

echo Removing *.bak files...
del *.bak /f /q /s
echo.

echo Removing *Backup*.cdr files...
del *Backup*.cdr /f /q /s
echo.

echo Removing *.db files...
del *.db /f /q /s
echo.

echo Hidden folder
::attrib +s +h "BitBucket"
::attrib +s +h "GitHub"
::attrib -s -h "BitBucket"
::attrib -s -h "GitHub"
echo.

echo Done.