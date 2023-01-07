@echo off
for /f %%a in ('fzf --reverse --header="Jump to location"') do (
  lf -remote "send %1 cd \"%%~dpa\""
  lf -remote "send %1 select \"%%a\""
)
