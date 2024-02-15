@echo off
set /p directory=Enter the directory to delete files from:
set /p extension=Enter the file extension to delete:
if /i "%directory%" equ "" (
    echo Please enter a valid directory.
    pause
    exit
)
if /i "%extension%" equ "" (
    echo Please enter a valid file extension.
    pause
    exit
)
for /R "%directory%" %%G in (*%extension%) do (
    echo Deleting %%G...
    del /f "%%G"
)
echo All files with extension %extension% have been deleted from %directory%.
pause
exit