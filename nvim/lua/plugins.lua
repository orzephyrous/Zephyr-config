vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color theme: gruvbox
  use 'ellisonleao/gruvbox.nvim'

  use 'nvim-tree/nvim-web-devicons'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }  

  -- speed up for start
  -- impatient.nvim
  use 'lewis6991/impatient.nvim'
  use 'nathom/filetype.nvim'

  -- barbar.nvim (tab bar)
  use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

  -- markdown-preview.nvim
  use {
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  }

  -- paste image
  use 'ekickx/clipboard-image.nvim'

  -- tree-sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  }

  -- which-key
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup()
    end
  }

  -- Comment.nvim
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- telescope.nvim
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- iron.nvim
  use 'hkupty/iron.nvim'
  
  -- surround.nvim
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup()
    end
  })

  -- leap.nvim
  use 'ggandor/leap.nvim'

end)
