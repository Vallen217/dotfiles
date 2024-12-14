return { -- Auto-completion
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-omni",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim",
	},

	config = function()
		vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

		require('luasnip.loaders.from_vscode').lazy_load()

		local cmp = require('cmp')
		local luasnip = require('luasnip')
		local lspkind = require("lspkind")

		local select_opts = { behavior = cmp.SelectBehavior.Select }

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end
			},
			sources = {
				{ name = 'path' },
				{ name = 'nvim_lsp' },
				{ name = 'buffer' },
				{ name = 'luasnip' },
				{ name = 'nvim_lua' },
				{ name = 'cmp-omni' },
			},
			window = {
				documentation = cmp.config.window.bordered()
			},
			formatting = {
				fields = { 'menu', 'abbr', 'kind' },
				format = lspkind.cmp_format({
					mode = "symbol",
					maxwidth = {
						menu = 50,
						abbr = 50,
					},
					ellipsis_char = "...",
					show_labelDetails = true,

					before = function(entry, item)
						-- ...
						return item
					end
				})
			},
			mapping = {
				['<C-h>'] = cmp.mapping.select_prev_item(select_opts),
				['<C-l>'] = cmp.mapping.select_next_item(select_opts),

				['<C-k>'] = cmp.mapping.scroll_docs(4),
				['<C-j>'] = cmp.mapping.scroll_docs(-4),

				['<C-c>'] = cmp.mapping.abort(),
				['<C-Enter>'] = cmp.mapping.confirm({ select = true }),
				['<CR>'] = cmp.mapping.confirm({ select = false }),

				['<C-f>'] = cmp.mapping(function(fallback)
					if luasnip.jumpable(1) then
						luasnip.jump(1)
					else
						fallback()
					end
				end, { 'i', 's' }),

				['<C-b>'] = cmp.mapping(function(fallback)
					if luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { 'i', 's' }),

				['<Tab>'] = cmp.mapping(function(fallback)
					local col = vim.fn.col('.') - 1

					if cmp.visible() then
						cmp.select_next_item(select_opts)
					elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
						fallback()
					else
						cmp.complete()
					end
				end, { 'i', 's' }),

				['<S-Tab>'] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item(select_opts)
					else
						fallback()
					end
				end, { 'i', 's' }),
			},
		})
	end
}
