# Custom Windows Batch Syntax
Custom syntax for .bat and .cmd files
It just replaces commands in file on Windows commands
# Need to run:
> Powershell (Tested on Windows 10 20H2 x32 and x64)  
> Above than 8192 bytes free space
# Commands
> this file is a target - Set file as target to compile (must be at 1st line)  
> @off - @echo off  
> @head - title  
> @## - Commented text like 'rem' command  
> @_ - : (@_void - :void)  
> @halt - exit  
> @stop - pause  
> @say - echo  
> @input - set /p (@input void=Text: - set /p void=Text:)  
> @math - set /a  
> @run - start  
> @ps - powershell  
> @get-date - echo %DATE%  
> @get-time - echo %TIME%  
> @arch - %PROCESSOR_ARCHITECTURE%  
> @userprofile - C:\Users\User  
> @username - User  
> @wait - timeout /nobreak /t (@wait 10 - timeout /nobreak /t 10)  
> @kill - taskkill /e /im (@kill notepad.exe - taskkill /e /im notepad.exe)  
# End of README
Good bye!
