return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	lazy = false,
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup()
		local DEFAULT_SETTINGS = {
			-- A list of servers to automatically install if they're not already installed. Example: { "rust_analyzer@nightly", "lua_ls" }
			-- This setting has no relation with the `automatic_installation` setting.
			ensure_installed = {
				-- lsp
				"bashls",
				"clangd",
				"cssls",
				"dockerls",
				"html",
				"jdtls",
				"jsonls",
				"lua_ls",
				"pyright",
				"rust_analyzer",
				"sqlls",
				"taplo",
				"vimls",
				"lemminx",
				"yamlls",
			},

			-- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed.
			-- This setting has no relation with the `ensure_installed` setting.
			-- Can either be:
			--   - false: Servers are not automatically installed.
			--   - true: All servers set up via lspconfig are automatically installed.
			--   - { exclude: string[] }: All servers set up via lspconfig, except the ones provided in the list, are automatically installed.
			--       Example: automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }
			automatic_installation = true,
		}

		local lspconfig = require("lspconfig")

		lspconfig.awk_ls.setup({})
		lspconfig.bashls.setup({})
		lspconfig.clangd.setup({})
		lspconfig.cssls.setup({})
		lspconfig.dockerls.setup({})
		lspconfig.html.setup({})
		lspconfig.jdtls.setup({})
		lspconfig.jsonls.setup({})
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					runtime = {
						-- Tell the language server which version of Lua you're using
						-- (most likely LuaJIT in the case of Neovim)
						version = 'LuaJIT',
					},
					diagnostics = {
						-- Get the language server to recognize the `vim` global
						globals = {
							'vim',
							'require'
						},
					},
					workspace = {
						-- Make the server aware of Neovim runtime files
						library = vim.api.nvim_get_runtime_file("", true),
					},
					-- Do not send telemetry data containing a randomized but unique identifier
					telemetry = {
						enable = false,
					},
				},
			},
		})
		lspconfig.pyright.setup({})
		lspconfig.rust_analyzer.setup({
			-- Server-specific settings. See `:help lspconfig-setup`
			settings = {
				["rust-analyzer"] = {},
			},
		})
		lspconfig.sqlls.setup({})
		lspconfig.vimls.setup({})
		lspconfig.yamlls.setup({})
	end
}
