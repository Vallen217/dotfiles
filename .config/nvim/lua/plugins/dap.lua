return { -- Debug Adapter Protocol
	"mfussenegger/nvim-dap",
	"jay-babu/mason-nvim-dap.nvim",
	opts = {
		ensure_installed = {
			"bash-debug-adapter",
			"codelldb",
			"cpptools",
			"debugpy",
		},
		handlers = {},
	},
}
