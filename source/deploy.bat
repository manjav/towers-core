@echo off

rmdir /s /q bin
pause

:: Get date with this template =>mouth day hours minutes seconds
set DATE=%date:~-10,2%%date:~-7,2%%time:~-11,2%%time:~-8,2%%time:~-5,2%
:: Repace space with 0
for %%a in (%DATE: =0%) do set DATE=%%a

set INTEXTFILE=src\com\gt\towers\LoginData.hx
set OUTTEXTFILE=src\com\gt\towers\LoginData_temp.hx
set SEARCHTEXT=coreVersion
set REPLACETEXT=%DATE%";//do not change len.

for /f "tokens=1,* delims=¶" %%a in ( '"type %INTEXTFILE%"') do (
echo %%a | findstr /C:%SEARCHTEXT% 1>nul
	if not errorlevel 1 (
		set mver=%%a
		call :exittag
	)
)
:exittag
:: Concat major varsion with modified date
set NEWNAME=%mver:~34,4%%DATE%


:: Update core version in LoginData class
setlocal enabledelayedexpansion
xcopy /y %INTEXTFILE% %OUTTEXTFILE%*
del %INTEXTFILE%

for /f "tokens=1,* delims=¶" %%A in ( '"type %OUTTEXTFILE%"') do (
echo %%A | findstr /C:%SEARCHTEXT% 1>nul
	if not errorlevel 1 (
		set line=%%A
		set NEWNAME = %line:~0,38%%DATE%
		>> %INTEXTFILE% echo(!line:~0,38!%REPLACETEXT%
	) ELSE (
		>> %INTEXTFILE% echo(%%A
	)
)

del %OUTTEXTFILE%


endlocal

:: Compile haxe classes to flash and java platforms
haxe compile.hxml

:: Move to usage address
echo f | xcopy /f /y bin\java\Core.jar C:\SmartFoxServer_2X\SFS2X\extensions\__lib__\core.jar
echo f | xcopy /f /y bin\flash\Core.swf C:\xampp\htdocs\cores\core-%NEWNAME%.swf
echo f | xcopy /f /y bin\flash\Core.swc C:\_projects\towers-projects\towers-client\flex-project\libs\core.swc
exit