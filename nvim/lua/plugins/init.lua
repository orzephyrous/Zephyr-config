return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		config = function()
			require("plugins.configs.kanagawa")
		end,
	},

	{ "nathom/filetype.nvim", lazy = false },

	{ "nvim-tree/nvim-web-devicons" },

	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("plugins.configs.lualine")
		end,
	},

	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("plugins.configs.bufferline")
		end,
	},

	{
		"ojroques/nvim-bufdel",
		lazy = false,
		config = function()
			require("plugins.configs.nvim-bufdel")
		end,
	},

	{
		"kylechui/nvim-surround",
		lazy = false,
		config = function()
			require("plugins.configs.nvim-surround")
		end,
	},

	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPre",
		config = function()
			require("plugins.configs.gitsigns")
		end,
	},

	{
		"NvChad/nvim-colorizer.lua",
		lazy = false,
		config = function()
			require("plugins.configs.nvim-colorizer")
		end,
	},

	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
		keys = require("keys.flash"),
	},

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		-- keys = { "<leader>", '"', "'", "`", "d", "c", "y", "v", "g", "z", "<C-w>" },
		config = function()
			require("keys.which-key")
		end,
	},

	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",
		keys = require("keys.comment"),
		config = function()
			require("plugins.configs.comment")
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		lazy = true,
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		keys = require("keys.nvim-tree"),
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("plugins.configs.nvim-tree")
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		cmd = "TSUpdateSync",
		event = { "BufReadPost", "BufNewFile" },
		build = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
		config = function()
			require("plugins.configs.nvim-treesitter")
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		cmd = "Telescope",
		keys = require("keys.telescope"),
		dependencies = "nvim-lua/plenary.nvim",
	},

	{
		"iamcco/markdown-preview.nvim",
		lazy = true,
		cmd = { "MarkdownPreview", "MarkdownPreviewToggle" },
		keys = require("keys.markdown-preview"),
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	{
		"cameron-wags/rainbow_csv.nvim",
		config = true,
		ft = {
			"csv",
			"tsv",
			"csv_semicolon",
			"csv_whitespace",
			"csv_pipe",
			"rfc_csv",
			"rfc_semicolon",
		},
		cmd = {
			"RainbowDelim",
			"RainbowDelimSimple",
			"RainbowDelimQuoted",
			"RainbowMultiDelim",
		},
	},

	{
		"akinsho/toggleterm.nvim",
		version = "*",
		lazy = true,
		cmd = { "ToggleTerm", "TermExec" },
		keys = require("keys.toggleterm"),
		config = function()
			require("plugins.configs.toggleterm")
		end,
	},
}
