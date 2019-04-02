@echo off
call "C:/Program Files (x86)/Microsoft Visual Studio 14.0/VC/\VCVARSALL.BAT" amd64 > NUL 
echo PATH=%PATH%,INCLUDE=%INCLUDE%,LIB=%LIB%,WINDOWSSDKDIR=%WINDOWSSDKDIR% 
