$a = Get-Content ".\in.txt" 
$a = $a -replace '@say ', 'echo ' -replace '@halt', 'exit' -replace '@## ', 'rem ' -replace '@off', '@echo off' -replace '@head ', 'title ' -replace '@input ', 'set /p ' -replace '@stop', 'pause' -replace '@wait ', 'timeout /nobreak /t ' -replace '@_', ':' -replace '@math ', 'set /a ' -replace '@ps ', 'powershell ' -replace '@kill ', 'taskkill /e /im ' -replace '@run', 'start' -replace '#this file is a target', '' -replace '@get-date', 'echo %date%' -replace '@get-time', 'echo %time%' -replace '@arch', '%PROCESSOR_ARCHITECTURE%' -replace '@userprofile', '%USERPROFILE%' -replace '@username', '%USERNAME%' 
echo $a | Out-File .\out.bat -Encoding ASCII 
