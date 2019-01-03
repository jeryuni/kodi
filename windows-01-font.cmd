@echo off
setlocal

rem Win32/64
rem local tools : curl.exe
rem remote tools : nircmdc.exe

set curl=curl.exe --create-dirs -kL#o

:fontStart

set fontsUrl=https://github.com/jeryuni/fonts/raw/master
set sysFont=NanumBarunGothicBold.ttf
set smiFont=cinema.ttf

set dst=%APPDATA%\kodi\media\Fonts

set toolsUrl=https://github.com/jeryuni/windows/raw/master/tools
set exe=nircmdc.exe
set sudo=%exe% elevate cmd.exe /c

if not exist "%ProgramFiles(x86)%" (set dir=%ProgramFiles%) else set dir=%ProgramFiles(x86)%
set arial=%dir%\Kodi\media\Fonts\arial.ttf

echo.
echo ### Kodi 시스템 글꼴 %sysFont% 다운로드 ###
%curl% "%dst%\%sysFont%" %fontsUrl%/%sysFont%
echo.

echo ### Kodi 자막 글꼴 %smiFont% 다운로드 ###
%curl% "%dst%\%smiFont%" %fontsUrl%/%smiFont%
echo.

if not exist "%dst%\%sysFont%" goto :fontEnd

echo ### Windows Tools %exe% 다운로드 ###
%curl% "%cd%\%exe%" %toolsUrl%/%exe%
echo.

if not exist "%cd%\%exe%" goto :fontEnd

echo ### Kodi 시스템 글꼴 %sysFont% 적용 ###
%sudo% "del /f /q "%arial%""
%sudo% "mklink "%arial%" "%dst%\%sysFont%""
echo.

:fontEnd
