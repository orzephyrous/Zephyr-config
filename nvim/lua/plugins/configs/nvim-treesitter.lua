require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "python", "markdown", "markdown_inline", "toml", "yaml", "julia", "r", "hjson", "json" },
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
  },
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
