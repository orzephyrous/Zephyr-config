@echo off
set /p dirname="[Make Directory] Directory name: "
if not exist "%dirname%" (
  md "%dirname%"
) else (
  echo Directory/File already exists!
  pause
)
