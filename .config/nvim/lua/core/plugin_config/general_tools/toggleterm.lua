require("toggleterm").setup({
	shade_terminals = false,
	shading_factor = -8,
	start_in_insert = true,

	float_opts = {
		border = "curved",
		title_pos = "center",
	},

	winbar = {
		enabled = false,
		name_formatter = function(term) --  term: Terminal
			return term.name
		end
	},
})
