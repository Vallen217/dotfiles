vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- local nonicons_extention = require("nvim-nonicons.extensions.nvim-tree")

require("nvim-tree").setup({
	renderer = {
		icons = {
			-- glyphs = nonicons_extention.glyphs,
		},
	},
})
