return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			c = { "cpplint" },
			cpp = { "cpplint" },
			sh = { "shellcheck" },
			bash = { "bash" },
			rust = { "clippy" },
			python = { "pylint" },
			lua = { "luacheck" },
			sql = { "sqlfluff" },
			markdown = { "Vale" },
			html = { "htmlhint" },
			css = { "stylelint" },
			scss = { "stylelint-scss" },
			yaml = { "spectral" },
			json = { "spectral" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				local function try_lint(lint)
					require("lint").try_lint(lint)
				end

				try_lint("codespell")
			end,
		})
	end,
}
