@echo off
set /a width=%2-2
bat %1 --color=always --theme=gruvbox-dark --line-range=:%3 --style=numbers --paging=never --terminal-width=%width%
