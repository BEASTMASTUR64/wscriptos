@echo off
setlocal EnableDelayedExpansion

set filstig=%1

for /f "tokens=1,2,3 USEBACKQ" %%a in (`dir %filstig%`) do (
	if "%%b" =="File(s)" (
			set filer=%%a
			set storlek=%%c 
			)
	if "%%b" =="Dir(s)" (
			set kataloger=%%a 
)
)

SET /A "result=!filer!+!kataloger!"

if exist %filstig%\ (
	echo %filstig% e en mapp med !result! filer
	echo !filer! filer, 
	echo !kataloger! kataloger, 
	echo !storlek! bytes,
) else ( 
	echo %filstig% e en FIL
	echo !storlek! bytes
)
