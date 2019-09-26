@echo off

set PATH=%PATH%;C:\Program Files\PostgreSQL\10\bin;

:: Program Shortcuts
  :: the $* syntax is to pass arguments to the executable
  :: for ex, `explorer .` will open an explorer in current directory
DOSKEY cd~=cd %userprofile% $*

DOSKEY cddev=cd %userprofile%\dev

DOSKEY yt2mp3=youtube-dl -x --audio-format mp3 $1

DOSKEY ytdl=youtube-dl $1

DOSKEY catcsv=bash "%USERPROFILE%\bash\catcsv.bash" $1

DOSKEY httrack="C:\Program Files\WinHTTrack\httrack.exe" $*

DOSKEY avd=flutter emulators --launch PIXEL_2_API_28

DOSKEY e=explorer $*

DOSKEY fman="%USERPROFILE%\AppData\Local\fman\fman.exe" $*

DOSKEY reaper="C:\Program Files\REAPER (x64)\reaper.exe" $*

DOSKEY conemu="C:\Program Files\ConEmu\ConEmu64.exe"

DOSKEY ableton="C:\ProgramData\Ableton\Live 10 Suite\Program\Ableton Live 10 Suite.exe"

DOSKEY cdai=cd "%USERPROFILE%\Documents\Classes\3rd Year\2nd semester\AI\Projects"

DOSKEY matlab="C:\Program Files\MATLAB\R2018b\bin\matlab.exe"

DOSKEY vim="C:\Program Files\Git\usr\bin\vim.exe" $*

DOSKEY inkscape="C:\Program Files\Inkscape\inkscape.exe" $*

DOSKEY chrome="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" $*

DOSKEY alias=notepad %USERPROFILE%\alias.cmd

:: Commands

DOSKEY ma=activate mood-algorithm

DOSKEY cpwd=pwd | clip

DOSKEY rlang="%USERPROFILE%\batch_scripts\rlang.bat" $*

:: use pandoc to convert markdown to pdf
:: requires pandoc https://pandoc.org/installing.html
:: also requires MiKTeX https://miktex.org/download
DOSKEY md2pdf=pandoc -s $1 -o $2
