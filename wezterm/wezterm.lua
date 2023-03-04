local wezterm = require 'wezterm'

return {
  -- Spawn powershell
  default_prog = { 'pwsh.exe', '-NoLogo' },
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
      label = 'Anaconda Prompt',
      args = { 'cmd.exe', '/K', [[%USERPROFILE%\anaconda3\Scripts\activate.bat %USERPROFILE%\anaconda3]] }
    },
    {
      label = 'Julia',
      args = { 'julia.exe' }
    }
  },
  font = wezterm.font_with_fallback {
    'FiraCode NFM',
    'Microsoft YaHei',
    'LXGW WenKai Mono'
  },
  font_rules = {
    {
      intensity = 'Bold',
      italic = false,
      font = wezterm.font_with_fallback {
        { family = 'FiraCode NFM', weight = 'Bold' }
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
