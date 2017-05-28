@echo off

:: Get date with this template =>mouth day hours minutes seconds
set DATE=%date:~-10,2%%date:~-7,2%%time:~-11,2%%time:~-8,2%%time:~-5,2%
:: Repace space with 0
for %%a in (%DATE: =0%) do set DATE=%%a

:: Get major version from first line of LoginData class
for /f "tokens=1,*" %%a in (src\com\gt\towers\LoginData.hx) do (
	set firstLine=%%a
	call :exittag
)

:exittag
:: Concat major varsion with modified date
set NEWNAME=%firstLine:~16%.%DATE%

for %%a in ("%NEWNAME: =0%") do echo %%a

:: Update core version in LoginData class
setlocal enabledelayedexpansion
set INTEXTFILE=src\com\gt\towers\LoginData.hx
set OUTTEXTFILE=src\com\gt\towers\LoginData_temp.hx

set SEARCHTEXT=999999
set REPLACETEXT=%NEWNAME%
set OUTPUTLINE=

xcopy /y %INTEXTFILE% %OUTTEXTFILE%*
del %INTEXTFILE%

for /f "tokens=1,* delims=¶" %%A in ( '"type %OUTTEXTFILE%"') do (
    SET string=%%A
    setlocal EnableDelayedExpansion
    SET modified=!string:%SEARCHTEXT%=%REPLACETEXT%!

    >> %INTEXTFILE% echo(!modified!
    endlocal
)
del %OUTTEXTFILE%

:: Compile haxe classes to flash and java platforms
haxe compile.hxml

:: Move to usage address
xcopy /y /i bin\java\Core.jar C:\Users\ManJav\SmartFoxServer_2X\SFS2X\lib\Core.jar
xcopy /y /i bin\flash\Core.swf C:\xampp\htdocs\cores\core-%NEWNAME%.swf
xcopy /y /i bin\flash\Core.swc D:\_PROJECTS\_FLEX\towers-projects\towers-client\flex-project\libs\core.swc

pause

:: return LoginData to template form
setlocal enabledelayedexpansion
set INTEXTFILE=src\com\gt\towers\LoginData.hx
set OUTTEXTFILE=src\com\gt\towers\LoginData_temp.hx

set SEARCHTEXT=%NEWNAME%
set REPLACETEXT=999999
set OUTPUTLINE=

xcopy /y %INTEXTFILE% %OUTTEXTFILE%*
del %INTEXTFILE%

for /f "tokens=1,* delims=¶" %%A in ( '"type %OUTTEXTFILE%"') do (
    SET string=%%A
    setlocal EnableDelayedExpansion
    SET modified=!string:%SEARCHTEXT%=%REPLACETEXT%!

    >> %INTEXTFILE% echo(!modified!
    endlocal
)
del %OUTTEXTFILE%

exit