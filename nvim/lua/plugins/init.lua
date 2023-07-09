return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("plugins.configs.gruvbox")
    end
  },

  { "folke/which-key.nvim", lazy = false },

  { "nathom/filetype.nvim", lazy = false },

  { "nvim-tree/nvim-web-devicons", lazy = false },

  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("plugins.configs.lualine")
    end
  },

  { 
    "akinsho/bufferline.nvim",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("plugins.configs.bufferline")
    end
  },

  {
    "kylechui/nvim-surround",
    lazy = false,
    config = function()
      require("plugins.configs.nvim-surround")
    end
  },

  {
    "numToStr/Comment.nvim",
    lazy = false,
    config = function()
      require("plugins.configs.comment")
    end
  },

  {
    "nvim-tree/nvim-tree.lua",
    lazy = true,
    keys = require("keys.nvim-tree"),
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("plugins.configs.nvim-tree")
    end
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
    config = function()
      require("plugins.configs.nvim-treesitter")
    end
  },

  {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    keys = require("keys.telescope"),
    dependencies = "nvim-lua/plenary.nvim"
  },

  {
    "ggandor/leap.nvim",
    lazy = true,
    keys = require("keys.leap"),
    config = function()
      require("plugins.configs.leap")
    end
  },

  {
    "iamcco/markdown-preview.nvim",
    lazy = true,
    keys = require("keys.markdown-preview"),
    ft = "markdown",
    build = function()
      vim.fn["mkdp#util#install"]()
    end
  },

}
