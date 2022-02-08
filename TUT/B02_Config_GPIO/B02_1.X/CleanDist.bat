@echo off

del /f /s /q ".\dist"
del /f /s /q ".\build"
del /f /s /q ".\debug"
del *.workspace  /f /q /s
del *.pdsbak /f /q /s
del *.tre /f /q /s
del *.cof /f /q /s
del *.ccspjt /f /q /s
del *.esym /f /q /s
del *.xsym /f /q /s
del *.STA /f /q /s
del *.sym /f /q /s
del *.lst /f /q /s
del *.err /f /q /s
del *.PJT /f /q /s
del *.bak /f /q /s
del *.elf /f /q /s
del *Backup*.cdr /f /q /s

echo Done.