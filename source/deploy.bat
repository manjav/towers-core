@echo off

:: Get date with this template =>mouth day hours minutes seconds
set DATE=%date:~-10,2%%date:~-7,2%%time:~-11,2%%time:~-8,2%%time:~-5,2%
:: Repace space with 0
for %%a in (%DATE: =0%) do set DATE=%%a

set INTEXTFILE=src\com\gt\towers\LoginData.hx
set OUTTEXTFILE=src\com\gt\towers\LoginData_temp.hx
set SEARCHTEXT=coreVersion
set REPLACETEXT=%DATE%;//do not change len.

for /f "tokens=1,* delims=¶" %%a in ( '"type %INTEXTFILE%"') do (
echo %%a | findstr /C:%SEARCHTEXT% 1>nul
	if not errorlevel 1 (
		set mver=%%a
		call :exittag
	)
)
:exittag
:: Concat major varsion with modified date
set NEWNAME=%mver:~32,4%%DATE%


:: Update core version in LoginData class
setlocal enabledelayedexpansion
xcopy /y %INTEXTFILE% %OUTTEXTFILE%*
del %INTEXTFILE%

for /f "tokens=1,* delims=¶" %%A in ( '"type %OUTTEXTFILE%"') do (
echo %%A | findstr /C:%SEARCHTEXT% 1>nul
	if not errorlevel 1 (
		set line=%%A
		set NEWNAME = %line:~0,36%%DATE%
		>> %INTEXTFILE% echo(!line:~0,36!%REPLACETEXT%
	) ELSE (
		>> %INTEXTFILE% echo(%%A
	)
)

del %OUTTEXTFILE%
endlocal

:: Compile haxe classes to flash and java platforms
haxe compile.hxml

:: Move to usage address
xcopy /y /i bin\java\Core.jar C:\Users\ManJav\SmartFoxServer_2X\SFS2X\lib\Core.jar
xcopy /y /i bin\flash\Core.swf C:\xampp\htdocs\cores\core-%NEWNAME%.swf
xcopy /y /i bin\flash\Core.swc D:\_PROJECTS\_FLEX\towers-projects\towers-client\flex-project\libs\core.swc

pause

exit