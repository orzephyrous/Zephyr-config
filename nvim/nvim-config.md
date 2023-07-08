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
  | |-iron.lua
  | |-leap.lua
  | |-nvim-tree.lua
  | └-telescope.lua
  └-plugins
    |-init.lua
    └-configs
      |-bufferline.lua
      |-comment.lua
      |-gruvbox.lua
      |-iron.lua
      |-leap.lua
      |-lualine.lua
      |-nvim-surround.lua
      |-nvim-tree.lua
      |-nvim-treesitter.lua
      └-telescope.lua
```

## plugins

- bufferline.nvim
- comment.nvim
- filetype.nvim
- impatient.nvim
- gruvbox.nvim
- lualine.nvim
- markdown-preview.nvim
- nvim-tree.lua
- nvim-treesitter
- nvim-web-devicons
- lazy.nvim
- telescope.nvim
- which-key.nvim
- iron.nvim
- nvim-surround
- leap.nvim

## content

- Plugin manager: lazy.nvim
- Startup improvement: impatient.nvim, filetype.nvim
- Color theme: gruvbox.nvim
- Nerd icons: nvim-web-devicons
- Status bar: lualine.nvim
- Tab bar: bufferline.nvim
- File tree: nvim-tree.lua
- File search: telescope.nvim
- Highlighting: nvim-treesitter
- Key bindings: which-key.nvim
- Quick motion: leap.nvim
- Comment: Comment.nvim
- Surround: nvim-surround
- REPL support: iron.nvim
- Basic settings: relative line number, listchars, cursorline
