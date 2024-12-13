local bufferline = require('bufferline')

local colors = {
	bg1 = "#12121f",
	bg2 = "#232338",
	bg3 = "#262640",

	fg = "#d4d7ff",

	grey1 = "#63668c",
	grey2 = "#4f5172",
	grey3 = "#444564",

	green1 = "#74d2b7",
	green2 = "#7ed7c0",

	blue1 = "#87bff7",
	blue2 = "#8fc8fa",

	ice1 = "#9be9f8",
	ice2 = "#aaecf8",

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

bufferline.setup {
	options = {
		mode = "buffers", -- set to "tabs" to only show tabpages instead
		style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
		numbers = "both",
		close_command = "bdelete! %d", -- can be a string | function, | false see "Mouse actions"
		right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
		middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
		indicator = {
			icon = '▎', -- this should be omitted if indicator style is not 'icon'
			style = 'icon',
		},
		buffer_close_icon = '󰅖',
		modified_icon = '● ',
		close_icon = ' ',
		left_trunc_marker = ' ',
		right_trunc_marker = ' ',
		max_name_length = 18,
		max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
		truncate_names = true, -- whether or not tab names should be truncated
		tab_size = 18,
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = false, -- only applies to coc
		diagnostics_update_on_event = true, -- use nvim's diagnostic handler
		-- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			return "(" .. count .. ")"
		end,
		-- NOTE: this will be called a lot so don't do any heavy processing here
		custom_filter = function(buf_number, buf_numbers)
			-- filter out filetypes you don't want to see
			if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
				return true
			end
			-- filter out by buffer name
			if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
				return true
			end
			-- filter out based on arbitrary rules
			-- e.g. filter out vim wiki buffer from tabline in your work repo
			if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
				return true
			end
			-- filter out by it's index number in list (don't show first buffer)
			if buf_numbers[1] ~= buf_number then
				return true
			end
		end,
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "left",
				separator = true
			}
		},
		color_icons = true, -- whether or not to add the filetype icon highlights
		get_element_icon = function(element)
			-- element consists of {filetype: string, path: string, extension: string, directory: string}
			-- This can be used to change how bufferline fetches the icon
			-- for an element e.g. a buffer or a tab.
			-- e.g.
			local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
			return icon, hl
		end,
		show_buffer_icons = true, -- disable filetype icons for buffers
		show_buffer_close_icons = true,
		show_close_icon = true,
		show_tab_indicators = true,
		show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
		duplicates_across_groups = true, -- whether to consider duplicate paths in different groups as duplicates
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		move_wraps_at_ends = false, -- whether or not the move command "wraps" at the first or last position
		-- can also be a table containing 2 custom separators
		-- [focused and unfocused]. eg: { '|', '|' }
		separator_style = "slant",
		enforce_regular_tabs = false,
		always_show_bufferline = false,
		auto_toggle_bufferline = true,
		hover = {
			enabled = true,
			delay = 200,
			reveal = { 'close' }
		},
		sort_by = 'directory',
		pick = {
			alphabet = "abcdefghijklmopqrstuvwxyzABCDEFGHIJKLMOPQRSTUVWXYZ1234567890",
		},
	},
	highlights = {
		fill = { fg = colors.bg1, bg = colors.bg1 },
		background = { fg = colors.grey1, bg = colors.bg1 },
		offset_separator = { fg = colors.bg1, bg = colors.bg1 },
		trunc_marker = { fg = colors.bg1, bg = colors.bg1 },

		buffer = { fg = colors.grey2, bg = colors.bg1 },
		separator = { fg = colors.bg1, bg = colors.bg1 },
		duplicate = { fg = colors.grey2, bg = colors.bg1, italic = true },
		modified = { fg = colors.ice2, bg = colors.bg1 },
		pick = { fg = colors.blue2, bg = colors.bg1 },
		close_button = { fg = colors.grey3, bg = colors.bg1 },
		numbers = { fg = colors.grey1, bg = colors.bg1, },
		diagnostic = { fg = colors.grey1, bg = colors.bg1, },
		hint = { fg = colors.lilac1, bg = colors.bg1, },
		hint_diagnostic = { fg = colors.lilac1, bg = colors.bg1, },
		info = { fg = colors.blue1, sp = colors.fg, bg = colors.bg11 },
		info_diagnostic = { fg = colors.blue1, bg = colors.bg1, },
		warning = { fg = colors.ice2, bg = colors.bg1, },
		warning_diagnostic = { fg = colors.ice2, bg = colors.bg1, },
		error = { fg = colors.red2, bg = colors.bg1, },
		error_diagnostic = { fg = colors.red2, bg = colors.bg1, },

		buffer_visible = { fg = colors.grey1, bg = colors.bg2 },
		separator_visible = { fg = colors.bg1, bg = colors.bg2 },
		duplicate_visible = { fg = colors.grey1, bg = colors.bg2, italic = true },
		modified_visible = { fg = colors.ice2, bg = colors.bg2 },
		pick_visible = { fg = colors.lilac2, bg = colors.bg2 },
		close_button_visible = { fg = colors.grey1, bg = colors.bg2 },
		numbers_visible = { fg = colors.grey1, bg = colors.bg2 },
		hint_visible = { fg = colors.lilac1, bg = colors.bg2, },
		hint_diagnostic_visible = { fg = colors.lilac1, bg = colors.bg2, },
		info_visible = { fg = colors.blue1, bg = colors.bg2 },
		info_diagnostic_visible = { fg = colors.blue1, bg = colors.bg2, },
		warning_visible = { fg = colors.ice2, bg = colors.bg2 },
		warning_diagnostic_visible = { fg = colors.ice2, bg = colors.bg2 },
		error_visible = { fg = colors.red2, bg = colors.bg2, },
		error_diagnostic_visible = { fg = colors.red2, bg = colors.bg2 },

		buffer_selected = { fg = colors.fg, bg = colors.bg2 },
		separator_selected = { fg = colors.bg1, bg = colors.bg2 },
		duplicate_selected = { fg = colors.fg, bg = colors.bg2, italic = true },
		modified_selected = { fg = colors.ice2, bg = colors.bg2 },
		pick_selected = { fg = colors.lilac2, bg = colors.bg2 },
		close_button_selected = { fg = colors.fg, bg = colors.bg2 },
		numbers_selected = { fg = colors.fg, bg = colors.bg2, bold = true, italic = true },
		hint_selected = { fg = colors.lilac1, bg = colors.bg2, bold = true, italic = true },
		hint_diagnostic_selected = { fg = colors.lilac1, bg = colors.bg2, bold = true, italic = true },
		info_selected = { fg = colors.blue1, bg = colors.bg2, bold = true, italic = true },
		info_diagnostic_selected = { fg = colors.blue1, bg = colors.bg2, bold = true, italic = true },
		warning_selected = { fg = colors.ice2, bg = colors.bg2, bold = true, italic = true },
		warning_diagnostic_selected = { fg = colors.ice2, bg = colors.bg2, bold = true, italic = true },
		error_selected = { fg = colors.red2, bg = colors.bg2, bold = true, italic = true },
		error_diagnostic_selected = { fg = colors.red2, bg = colors.bg2, bold = true, italic = true },

	}
}
