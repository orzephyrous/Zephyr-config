# Zephyr-config

Zephyr's configuration files for my Windows PC.

Config diectories are linked to this repository using `New-Item -ItemType Junction -Path ... -Value ...` in powershell.

## Config directories:

- broot: `%APPDATA%\dystroy\broot`
- helix: `%APPDATA%\helix`
- lf: `%LOCALAPPDATA%\lf`
- micro: `~\.config\micro`
- mpv: `%APPDATA\mpv` (scoop: `~\scoop\persist\mpv\portable_config`)
- mpv.net: `%APPDATA%\mpv.net` (scoop: `~\scoop\persist\mpv.net-beta\portable_config`)
- NeoVim: `%LOCALAPPDATA%\nvim`
- Rime: `%APPDATA%\Rime`
- wezterm: `~\.config\wezterm`

## Contents

Main content of each folder.

### broot

- Start with git info
- Integration with 7z, Recycle, helix, nvim, nu

### lf

- Shows icons and relative numbers.
- Previewer based on bat with highlight.
- Change default pager, editor, shell to bat, nvim, powershell.
- Commands to make new directories and create new files.
- Commands to copy workdir to clipboard or open workdir in explorer.
- Archive operations with 7-zip.
- Integrations with various utilities (dragon, nvim, micro, sioyek, difftastic, fzf).
- Commands to preview with bat and wezterm imgcat.

### helix

- Set theme to gruvbox.
- Bar cursor in insert mode.
- Highlight cursor line.
- Always show bufferline.
- Show relative line numbers.
- Show space and tabs.
- Show indent guides.
- Modified status line.

### micro

- Set color scheme to gruvbox.
- Disable command history records.

### mpv

See `mpv\README.md`

### mpv.net

See `mpv.net\mpvnet-config.md`

### Neovim

See `nvim\nvim-config.md`

### Rime

See `Rime\Rime-config.md`

### wezterm

- Start up with 120 columns and 30 rows (Windows Terminal Default).
- Set default program to powershell (5.1).
- Add cmd, powershell(5.1), powershell (7.3), git bash, git cmd, anaconda prompt to launch menu.
- Set default font to Operator Mono SSm Lig, Microsoft YaHei (Most Chinese characters), LXGW Wenkai Mono (Some Chinese characters).
- Set _Italic_ fonts.
- Set font size to 12.
- Bind `ALT + w` to close pane, `ALT + l` to show launch menu.

