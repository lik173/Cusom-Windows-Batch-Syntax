@echo off
title Compiler
goto help
:help
set /p filein=Input file with extension: 
if not exist %filein% goto help
set /p out=Output file with extension: 
goto compilechk
:compilechk
set /p in=< %filein%
if "%in%"=="#this file is a target" (goto compile)
echo Put '#this file is a target' in first line to compile
goto help
:compile
powershell Set-ExecutionPolicy Bypass -Scope CurrentUser
echo $a = Get-Content ".\%filein%" > compile.ps1
echo $a = $a -replace '@say ', 'echo ' -replace '@halt', 'exit' -replace '@## ', 'rem ' -replace '@off', '@echo off' -replace '@head ', 'title ' -replace '@input ', 'set /p ' -replace '@stop', 'pause' -replace '@wait ', 'timeout /nobreak /t ' -replace '@_', ':' -replace '@math ', 'set /a ' -replace '@ps ', 'powershell ' -replace '@kill ', 'taskkill /f /im ' -replace '@run', 'start' -replace '#this file is a target', '' -replace '@get-date', 'echo %%date%%' -replace '@get-time', 'echo %%time%%' -replace '@arch', '%%PROCESSOR_ARCHITECTURE%%' -replace '@userprofile', '%%USERPROFILE%%' -replace '@username', '%%USERNAME%%' -replace '@jmp ', 'goto ' >> compile.ps1
echo echo $a ^| Out-File .\%out% -Encoding ASCII >> compile.ps1
powershell .\compile.ps1
