require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "help" , "python", "markdown", "toml", "yaml" },
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
  },
}