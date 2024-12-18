return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				c = { "clang-format" },
				cpp = { "clang-format" },
				sh = { "shellcheck" },
				bash = { "beautysh" },
				rust = { "rustfmt" },
				python = { "isort", "blue" },
				lua = { "stylua" },
				sql = { "sql_formatter" },
				-- FIX: md formatter
				markdown = { "markdownfmt" },
				html = { "superhtml" },
				css = { "prettier" },
				scss = { "prettier" },
				yaml = { "prettier" },
				json = { "prettier" },
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}
