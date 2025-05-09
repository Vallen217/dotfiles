local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- color palette
local c = {
	bg1 = "#12121f",
	bg2 = "#171728",
	bg3 = "#1d1d2f",
	bg4 = "#222236",
	bg5 = "#262640",

	fg = "#d4d7ff",

	grey1 = "#63668c",
	grey2 = "#4f5172",
	grey3 = "#444564",

	green1 = "#74d2b7",
	green2 = "#7ed7c0",

	blue1 = "#82bdf7",
	blue2 = "#85c3f9",

	ice1 = "#97e7f7",
	ice2 = "#a1eaf7",

	purple1 = "#9486e4",
	purple2 = "#9f95e9",

	lilac1 = "#88a4f7",
	lilac2 = "#94aef9",

	yellow1 = "#e5dca4",
	yellow2 = "#ecdfac",

	orange1 = "#e2b88d",
	orange2 = "#e8bf9c",

	red1 = "#bd4277",
	red2 = "#bf4a7f",

	pink1 = "#c45a99",
	pink2 = "#d864aa",
}

-- colorscheme
config.colors = {
	-- The default text color
	foreground = c.fg,
	-- The default background color
	background = c.bg1,

	-- Overrides the cell background color when the current cell is occupied by the
	-- cursor and the cursor style is set to Block
	cursor_bg = c.fg,
	-- Overrides the text color when the current cell is occupied by the cursor
	cursor_fg = c.bg1,
	-- Specifies the border color of the cursor when the cursor style is set to Block,
	-- or the color of the vertical or horizontal bar when the cursor style is set to
	-- Bar or Underline.
	cursor_border = c.fg,

	-- the foreground color of selected text
	selection_fg = c.fg,
	-- the background color of selected text
	selection_bg = c.bg3,

	-- The color of the scrollbar "thumb"; the portion that represents the current viewport
	scrollbar_thumb = c.fg,

	-- The color of the split lines between panes
	split = "#444444",

	ansi = {
		c.bg1,
		c.red1,
		c.green1,
		c.yellow1,
		c.blue1,
		c.purple1,
		c.ice1,
		c.fg,
	},
	brights = {
		c.grey2,
		c.red2,
		c.green2,
		c.yellow2,
		c.blue2,
		c.purple2,
		c.ice2,
		c.fg,
	},

	-- Since: 20220319-142410-0fcdea07
	-- When the IME, a dead key or a leader key are being processed and are effectively
	-- holding input pending the result of input composition, change the cursor
	-- to this color to give a visual cue about the compose state.
	compose_cursor = c.orange1,

	-- tab bar
	tab_bar = {
		active_tab = {
			bg_color = c.bg3,
			fg_color = c.fg,
		},

		inactive_tab = {
			bg_color = c.bg1,
			fg_color = c.grey1,
		},

		inactive_tab_hover = {
			bg_color = c.bg2,
			fg_color = c.grey1,
		},

		new_tab = {
			bg_color = c.bg1,
			fg_color = c.grey1,
		},

		new_tab_hover = {
			bg_color = c.bg2,
			fg_color = c.fg,
		},
	},
}

-- font
config.font = wezterm.font_with_fallback({
	"ShureTechMono NF",
	"JetBrains Mono",
	"Fira Code",
})

-- shell
config.default_prog = { "/bin/fish", "-l" }

-- tab bar
config.use_fancy_tab_bar = true
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
	font = wezterm.font("ShureTechMono NF", { weight = "Regular", stretch = "UltraCondensed" }),
	active_titlebar_bg = "#12121f",
	inactive_titlebar_bg = "#12121f",
}

config.window_background_opacity = 0.75

-- Wezterm won't launch on wayland unless set to false?
config.enable_wayland = false

return config
