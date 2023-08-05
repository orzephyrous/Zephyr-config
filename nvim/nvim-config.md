# NeoVim

## config layout

```
|-nvim-config.md
|-ginit.vim
|-init.lua
└-lua
  |-core.lua
  |-keys
  | |-comment.lua
  | |-init.lua
  | |-leap.lua
  | |-markdown-preview.lua
  | |-nvim-tree.lua
  | |-telescope.lua
  | |-toggleterm.lua
  | └-which-key.lua
  └-plugins
    |-init.lua
    └-configs
      |-bufferline.lua
      |-comment.lua
      |-gitsigns.lua
      |-kanagawa.lua
      |-leap.lua
      |-lualine.lua
      |-nvim-bufdel.lua
      |-nvim-surround.lua
      |-nvim-tree.lua
      |-nvim-treesitter.lua
      └-toggleterm.lua
```

## plugins

- bufferline.nvim
- comment.nvim
- filetype.nvim
- kanagawa.nvim
- gitsigns.nvim
- lualine.nvim
- markdown-preview.nvim
- nvim-tree.lua
- nvim-treesitter
- nvim-web-devicons
- lazy.nvim
- telescope.nvim
- which-key.nvim
- nvim-surround
- leap.nvim

## content

- Plugin manager: lazy.nvim
- Startup improvement: filetype.nvim
- Color theme: kanagawa.nvim
- Nerd icons: nvim-web-devicons
- Status bar: lualine.nvim
- Tab bar: bufferline.nvim
- Buffer management: nvim-bufdel
- File tree: nvim-tree.lua
- File search: telescope.nvim
- Highlighting: nvim-treesitter
- Key bindings: which-key.nvim
- Quick motion: leap.nvim
- Comment: Comment.nvim
- Surround: nvim-surround
- Markdown support: markdown-preview.nvim
- Terminal: toggleterm.nvim
- Git: gitsigns.nvim
- Basic settings: relative line number, listchars, cursorline
