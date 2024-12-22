return { -- Auto-completion
	"saghen/blink.cmp",
	lazy = false, -- lazy loading handled internally
	-- !Important! Make sure you're using the latest release of LuaSnip
	-- `main` does not work at the moment
	dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },

	-- use a release tag to download pre-built binaries
	version = "v0.*",
	-- OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
	-- build = 'cargo build --release',
	-- If you use nix, you can build from source using latest nightly rust with:
	-- build = 'nix run .#build-plugin',

	-- ---@module 'blink.cmp'
	-- ---@type blink.cmp.Config
	opts = {
		snippets = {
			expand = function(snippet)
				require("luasnip").lsp_expand(snippet)
			end,
			active = function(filter)
				if filter and filter.direction then
					return require("luasnip").jumpable(filter.direction)
				end
				return require("luasnip").in_snippet()
			end,
			jump = function(direction)
				require("luasnip").jump(direction)
			end,
		},
		sources = {
			default = { "lsp", "path", "luasnip", "buffer" },
		},

		appearance = {
			-- Sets the fallback highlight groups to nvim-cmp's highlight groups
			-- Useful for when your theme doesn't support blink.cmp
			-- will be removed in a future release
			use_nvim_cmp_as_default = true,
			-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
			-- Adjusts spacing to ensure icons are aligned
			nerd_font_variant = "mono",
		},

		keymap = {
			preset = "default",
			["<C-Enter>"] = {
				function(cmp)
					cmp.accept({ index = 1 })
				end,
			},
			["<C-1>"] = {
				function(cmp)
					cmp.accept({ index = 1 })
				end,
			},
			["<C-2>"] = {
				function(cmp)
					cmp.accept({ index = 2 })
				end,
			},
			["<C-3>"] = {
				function(cmp)
					cmp.accept({ index = 3 })
				end,
			},
			["<C-4>"] = {
				function(cmp)
					cmp.accept({ index = 4 })
				end,
			},
			["<C-5>"] = {
				function(cmp)
					cmp.accept({ index = 5 })
				end,
			},
			["<C-6>"] = {
				function(cmp)
					cmp.accept({ index = 6 })
				end,
			},
			["<C-7>"] = {
				function(cmp)
					cmp.accept({ index = 7 })
				end,
			},
			["<C-8>"] = {
				function(cmp)
					cmp.accept({ index = 8 })
				end,
			},
			["<C-9>"] = {
				function(cmp)
					cmp.accept({ index = 9 })
				end,
			},
		},
		completion = {
			menu = {
				draw = {
					columns = { { "item_idx" }, { "kind_icon" }, { "label", "label_description", gap = 1 } },
					components = {
						item_idx = {
							text = function(ctx)
								return tostring(ctx.idx)
							end,
							highlight = "BlinkCmpItemIdx", -- optional, only if you want to change its color
						},
					},
				},
			},
		},
	},
	-- allows extending the providers array elsewhere in your config
	-- without having to redefine it
	opts_extend = { "sources.default" },
}
