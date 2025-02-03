@echo off

:: Set the full path to the boiler.txt file
set BOILER_FILE=C:\Users\rian64bit\boicpp.txt

:: Check if boiler.txt exists at the specified path
if not exist "%BOILER_FILE%" (
    echo Error: %BOILER_FILE% not found!
    exit /b
)

:: Create the main folder CP_File
mkdir CP_File

:: Change to the CP_File folder
cd CP_File

:: Create the 6 subfolders (a, b, c, d, e, f)
for %%F in (a b c d e f) do (
    mkdir %%F
    cd %%F

    :: Copy the boiler.txt content into the respective C++ file (A.cpp, B.cpp, etc.)
    if %%F==a (
        copy "%BOILER_FILE%" A.cpp
    ) else if %%F==b (
        copy "%BOILER_FILE%" B.cpp
    ) else if %%F==c (
        copy "%BOILER_FILE%" C.cpp
    ) else if %%F==d (
        copy "%BOILER_FILE%" D.cpp
    ) else if %%F==e (
        copy "%BOILER_FILE%" E.cpp
    ) else if %%F==f (
        copy "%BOILER_FILE%" F.cpp
    )

    :: Create input.txt, output.txt, and error.txt in each subfolder
    type nul > input.txt
    type nul > output.txt
    type nul > error.txt

    :: Go back to the parent CP_File folder
    cd ..
)

echo Boiler content has been copied into all C++ files, and the necessary text files have been created in each subfolder.
pause
