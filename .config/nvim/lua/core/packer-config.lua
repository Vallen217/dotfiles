local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- lsp
	use({ -- lsp manager
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		run = ":MasonUpdate",
	})
	use { 'neoclide/coc.nvim', branch = 'release' }

	-- formatting
	use("MunifTanjim/prettier.nvim")
	use({
		"elentok/format-on-save.nvim",
		require("format-on-save").format()
	})

	-- auto-completion
	use({ -- code auto-completion
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
	})
	use({ -- snippet engine
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	})
	use({ -- smart auto pairing
		"ZhiyuanLck/smart-pairs",
		event = "InsertEnter",
		config = function()
			require("pairs"):setup()
		end,
	})
	use("onsails/lspkind.nvim") -- adds icons to auto-completion buffer

	-- syntax
	use({ -- syntax highlighting
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
		requires = "nvim-treesitter"
	})
	use({
		"nvim-treesitter/nvim-treesitter-context",
		after = "nvim-treesitter",
		requires = "nvim-treesitter"
	})
	use("folke/lsp-colors.nvim") -- creates missing link in treesitter

	-- debugging && diagnostics
	use({ -- debug adapter protocol
		"mfussenegger/nvim-dap",
		"jay-babu/mason-nvim-dap.nvim",
	})
	use({ -- diagnostics
		"folke/trouble.nvim",
		requires = "nvim-web-devicons",
	})

	-- git && file managementuse
	use({ -- lazy git integration
		"kdheepak/lazygit.nvim",
		requires = "nvim-lua/plenary.nvim",
	})
	use({ -- buffer tabs
		"romgrk/barbar.nvim",
		requires = "nvim-web-devicons",
	})
	use({ -- file tree
		"nvim-tree/nvim-tree.lua",
		requires = "nvim-web-devicons",
	})
	use("lewis6991/gitsigns.nvim") -- git integration

	-- comments
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use({ -- annotation generator
		"danymat/neogen",
		config = function()
			require("neogen").setup({ snippet_engine = "luasnip" })
		end,
		requires = "nvim-treesitter/nvim-treesitter",
		tag = "*",
	})
	use({ -- highlight and search for todo comments
		"folke/todo-comments.nvim",
		requires = "nvim-web-devicons",
	})

	-- integrated visual aids (aesthetics)
	use({ -- lithe color column
		"lukas-reineke/virt-column.nvim",
		require("virt-column").setup({}),
	})
	use({ -- underlines cursor words and lines
		"yamatsum/nvim-cursorline",
		require("nvim-cursorline").setup({}),
	})
	use({ -- buffer which displays possible keymap completions
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup()
		end,
	})
	use({ -- smarter code folding
		"kevinhwang91/nvim-ufo",
		requires = "kevinhwang91/promise-async",
	})
	use("kyazdani42/nvim-web-devicons") -- icons
	use({
		"yamatsum/nvim-nonicons",    -- icon set using nonicons
		requires = { "kyazdani42/nvim-web-devicons" },
		--require("nvim-nonicons").setup({}),
	})
	use({
		"Wansmer/symbol-usage.nvim",
		event = "LspAttach", -- need run before LspAttach if you use nvim 0.9. On 0.10 use 'LspAttach'
		config = function()
			require("symbol-usage").setup()
		end,
	})
	use({ -- visual LSP renaming
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup()
		end
	})
	use({
		"stevearc/aerial.nvim",
		config = function()
			require("aerial").setup()
		end,
	})
	use("lukas-reineke/indent-blankline.nvim") -- visual indentation layers
	use("rcarriga/nvim-notify")             -- notifications
	use("nvim-lualine/lualine.nvim")        -- powerline

	-- general tools
	use({ -- fuzzy finder
		"nvim-telescope/telescope.nvim",
		tag = "0.1.x",
		requires = "nvim-lua/plenary.nvim",
	})
	use({
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup()
		end
	})
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})
	use("kelly-lin/ranger.nvim")
	use("folke/flash.nvim")      -- code navigation
	use("goolord/alpha-nvim")    -- startup menu
	use("dstein64/vim-startuptime") -- display startup time

	--TODO: Add:
	-- bufferline
	-- neogit
	-- dashboard

	-- colorscheme
	-- use("Vallen217/eidolon.nvim")
	use("~/Workspace/eidolon.nvim")

	-- automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
