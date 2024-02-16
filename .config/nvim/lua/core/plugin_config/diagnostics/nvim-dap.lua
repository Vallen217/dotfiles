require("mason-nvim-dap").setup({
	ensure_installed = {
		"bash-debug-adapter",
		"codelldb",
		"cpptools",
		"debugpy",
	},
	handlers = {},
})
