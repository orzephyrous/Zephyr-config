@echo off
set /p filename="[New File] File name: "
if not exist %filename% (
  type nul >> %filename%
) else (
  echo File/Directory already exist!
  pause
)
