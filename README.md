# Zephyr-config

Zephyr's configuration files for my Windows PC.

Made this for better data migration to my new laptop.

## Config directories:

- helix: `%APPDATA%\helix`
- lf: `%LOCALAPPDATA%\lf`
- micro: `~\.config\micro`
- mpv.net: `%APPDATA%\mpv.net`
- NeoVim: `%LOCALAPPDATA%\nvim`
- Rime: `%APPDATA%\Rime`
- wezterm: `~\.config\wezterm`

## Contents

Main content of each folder.

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

### mpv.net

See `mpv.net\mpvnet-config.md`

### Neovim

See `nvim\nvim-config.md`

### Rime

See `Rime\Rime-config.md`

### wezterm

- Start up in maximized window.
- Set default program to powershell (5.1).
- Add cmd, powershell(5.1), powershell (7.3), git bash, git cmd to launch menu.
- Set default font to FiraCode Nerd Font Mono (English), Microsoft YaHei (Most Chinese characters), LXGW Wenkai Mono (Some Chinese characters).
- Set font size to 11.
- Bind `ALT + w` to close pane, `ALT + l` to show launch menu.

