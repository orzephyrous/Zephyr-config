local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

return {
  -- Spawn powershell
  default_prog = { 'powershell.exe', '-NoLogo' },
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
      label = 'Powershell 7.3.1',
      args = { 'pwsh.exe' }
    },
    {
      label = 'Git Bash',
      args = { 'C:\\Program Files\\Git\\bin\\bash.exe' }
    },
    {
      label = 'Git CMD',
      args = { 'C:\\Program Files\\Git\\git-cmd.exe' }
    },
    {
      label = 'Nushell',
      args = { 'nu.exe' }
    },
    {
      label = 'Anaconda Prompt',
      args = { 'cmd.exe', '/K', [[C:\ProgramData\Anaconda3\Scripts\activate.bat C:\ProgramData\Anaconda3]] }
    }
  },
  font = wezterm.font_with_fallback {
    'FiraCode Nerd Font Mono',
    'Noto Color Emoji',
    'Microsoft YaHei',
    'LXGW WenKai Mono'
  },
  font_size = 11,
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
  },
}
