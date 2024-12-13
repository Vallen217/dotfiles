return {
	{ -- Colorscheme
		"Vallen217/eidolon.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd [[colorscheme eidolon]]
		end
	},

	{ -- Auto-pairing
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true,
	},

	{ -- Git iterface
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration
			"nvim-telescope/telescope.nvim", -- optional
		},
		config = true
	},

	{ -- File tree
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
		},
	},

	{ -- File manager
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	},

	{ -- Code navigation
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
	},

	{
		"yamatsum/nvim-nonicons",
		dependencies = { "kyazdani42/nvim-web-devicons" },
	},

	{ -- Visual indentation lines
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},

	-- Colorcolumn
	{ "lukas-reineke/virt-column.nvim" },

	{ -- Snippet engine
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
		"saadparwaiz1/cmp_luasnip",
	},

	{ -- Keymap popup menu
		"folke/which-key.nvim",
		event = "VeryLazy",
	},

	{                   -- Display references, definitions and implementations of document symbols
		'Wansmer/symbol-usage.nvim',
		event = 'BufReadPre', -- need run before LspAttach if you use nvim 0.9. On 0.10 use 'LspAttach'
		config = function()
			require('symbol-usage').setup()
		end
	},

	{ -- Markdown preview
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	-- Comments
	{ "numToStr/Comment.nvim" },

	-- Underline words under the cursor
	{ "yamatsum/nvim-cursorline" },

	-- Notification manager
	{
		"rcarriga/nvim-notify",
		config = function()
			vim.notify = require("notify")
		end
	},
}
