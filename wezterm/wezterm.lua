local wezterm = require 'wezterm'

return {
  default_prog = { 'pwsh.exe' },
  color_scheme = "Catppuccin Mocha",
  launch_menu = {
    {
      label = 'cmd',
      args = { 'cmd.exe' }
    },
    {
      label = 'Windows Powershell 5.1',
      args = { 'powershell.exe' }
    },
    {
      label = 'Powershell 7',
      args = { 'pwsh.exe' }
    },
    {
      label = 'Nushell',
      args = { 'nu.exe' }
    },
    {
      label = 'Git Bash',
      args = { [[C:\Program Files\Git\bin\bash.exe]] }
    },
    {
      label = 'Git CMD',
      args = { [[C:\Program Files\Git\git-cmd.exe]] }
    },
    {
      label = 'Miniforge Prompt (mambaforge)',
      args = { 'cmd.exe', '/K', [[%USERPROFILE%\mambaforge\Scripts\activate.bat %USERPROFILE%\mambaforge]] }
    },
    {
      label = 'Julia',
      args = { 'cmd.exe', '/C', 'julia.exe' }
    }
  },
  font = wezterm.font_with_fallback {
    'Fira Code',
    { family = 'Symbols Nerd Font Mono', scale = 0.75 },
    'Microsoft YaHei',
    'LXGW WenKai Mono'
  },
  font_rules = {
    {
      intensity = 'Bold',
      italic = false,
      font = wezterm.font_with_fallback {
        { family = 'Fira Code', weight = 'Bold' }
      }
    },
    {
      intensity = 'Bold',
      italic = true,
      font = wezterm.font_with_fallback {
        { family = 'Operator Mono SSm Lig Bold', style = 'Italic' }
      }
    },
    {
      intensity = 'Normal',
      italic = true,
      font = wezterm.font_with_fallback {
        { family = 'Operator Mono SSm Lig Book', style = 'Italic' }
      }
    }
  },
  font_size = 12,
  initial_cols = 120,
  initial_rows = 30,
  keys = {
    {
      key = 'w',
      mods = 'ALT',
      action = wezterm.action.CloseCurrentPane { confirm = true }
    },
    {
      key = 'l',
      mods = 'ALT',
      action = wezterm.action.ShowLauncher
    },
    {
      key = 'Enter',
      mods = 'ALT',
      action = wezterm.action.DisableDefaultAssignment,
    },
  },
}
