require("dashboard").setup({
	theme = "hyper",
	config = {
		week_header = {
			enable = true,
		},
		shortcut = {
			{
				icon = "󰊳 ",
				icon_hl = "Function",
				desc = "Update",
				group = "Function",
				action = [[
					PackerSync
					TSUpdateSync
					CocUpdateSync
					MasonUpdate
				]],
				key = "u"
			},
			{
				icon = "󰈔 ",
				icon_hl = "Conditional",
				desc = "Files",
				group = "Conditional",
				action = "Telescope find_files",
				key = "f",
			},
			{
				icon = " ",
				icon_hl = "Type",
				desc = "Workspace",
				group = "Type",
				action = "cd ~/Workspace | Telescope find_files",
				key = "w",
			},
			{
				icon = " ",
				icon_hl = "Conditional",
				desc = "Dotfiles",
				group = "Conditional",
				action = "cd ~/Workspace/dotfiles | Telescope find_files",
				key = "d",
			},
			{
				icon = " ",
				icon_hl = "Function",
				desc = "Neovim",
				group = "Function",
				action = "cd ~/.config/nvim | Telescope find_files",
				key = "n",
			},
		},
	},
})
