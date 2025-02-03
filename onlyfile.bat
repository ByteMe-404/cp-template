@echo off

:: Set the full path to the boiler.txt file
set BOILER_FILE=C:\Users\rian64bit\boiler.txt

:: Check if boiler.txt exists at the specified path
if not exist "%BOILER_FILE%" (
    echo Error: %BOILER_FILE% not found!
    exit /b
)

:: Create a new folder
mkdir new_folder

:: Change to the new folder
cd new_folder

:: Copy contents of boiler.txt into each of the 6 cpp files
copy "%BOILER_FILE%" A.cpp
copy "%BOILER_FILE%" B.cpp
copy "%BOILER_FILE%" C.cpp
copy "%BOILER_FILE%" D.cpp
copy "%BOILER_FILE%" E.cpp
copy "%BOILER_FILE%" F.cpp

echo Boiler content has been copied into all C++ files.
pause
