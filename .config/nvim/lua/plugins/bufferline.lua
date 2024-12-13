return { -- Bufferline
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {

		options = {
			mode = "buffers", -- set to "tabs" to only show tabpages instead
			-- style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
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
				local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype,
					{ default = false })
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
			separator_style = "slope",
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

			fill = { fg = "#12121f", bg = "#12121f" },
			background = { fg = "#63668c", bg = "#12121f" },
			offset_separator = { fg = "#12121f", bg = "#12121f" },
			trunc_marker = { fg = "#12121f", bg = "#12121f" },

			buffer = { fg = "#4f5172", bg = "#12121f" },
			separator = { fg = "#12121f", bg = "#12121f" },
			duplicate = { fg = "#4f5172", bg = "#12121f", italic = true },
			modified = { fg = "#aaecf8", bg = "#12121f" },
			pick = { fg = "#8fc8fa", bg = "#12121f" },
			close_button = { fg = "#444564", bg = "#12121f" },
			numbers = { fg = "#63668c", bg = "#12121f", },
			diagnostic = { fg = "#63668c", bg = "#12121f", },
			hint = { fg = "#88a4f7", bg = "#12121f", },
			hint_diagnostic = { fg = "#88a4f7", bg = "#12121f", },
			info = { fg = "#87bff7", sp = "#d4d7ff", bg = "#12121f", },
			info_diagnostic = { fg = "#87bff7", bg = "#12121f", },
			warning = { fg = "#aaecf8", bg = "#12121f", },
			warning_diagnostic = { fg = "#aaecf8", bg = "#12121f", },
			error = { fg = "#bf4a7f", bg = "#12121f", },
			error_diagnostic = { fg = "#bf4a7f", bg = "#12121f", },

			buffer_visible = { fg = "#63668c", bg = "#232338" },
			separator_visible = { fg = "#12121f", bg = "#232338" },
			duplicate_visible = { fg = "#63668c", bg = "#232338", italic = true },
			modified_visible = { fg = "#aaecf8", bg = "#232338" },
			pick_visible = { fg = "#94aef9", bg = "#232338" },
			close_button_visible = { fg = "#63668c", bg = "#232338" },
			numbers_visible = { fg = "#63668c", bg = "#232338" },
			hint_visible = { fg = "#88a4f7", bg = "#232338", },
			hint_diagnostic_visible = { fg = "#88a4f7", bg = "#232338", },
			info_visible = { fg = "#87bff7", bg = "#232338" },
			info_diagnostic_visible = { fg = "#87bff7", bg = "#232338", },
			warning_visible = { fg = "#aaecf8", bg = "#232338" },
			warning_diagnostic_visible = { fg = "#aaecf8", bg = "#232338" },
			error_visible = { fg = "#bf4a7f", bg = "#232338", },
			error_diagnostic_visible = { fg = "#bf4a7f", bg = "#232338" },

			buffer_selected = { fg = "#d4d7ff", bg = "#232338" },
			separator_selected = { fg = "#12121f", bg = "#232338" },
			duplicate_selected = { fg = "#d4d7ff", bg = "#232338", italic = true },
			modified_selected = { fg = "#aaecf8", bg = "#232338" },
			pick_selected = { fg = "#94aef9", bg = "#232338" },
			close_button_selected = { fg = "#d4d7ff", bg = "#232338" },
			numbers_selected = { fg = "#d4d7ff", bg = "#232338", bold = true, italic = true },
			hint_selected = { fg = "#88a4f7", bg = "#232338", bold = true, italic = true },
			hint_diagnostic_selected = { fg = "#88a4f7", bg = "#232338", bold = true, italic = true },
			info_selected = { fg = "#87bff7", bg = "#232338", bold = true, italic = true },
			info_diagnostic_selected = { fg = "#87bff7", bg = "#232338", bold = true, italic = true },
			warning_selected = { fg = "#aaecf8", bg = "#232338", bold = true, italic = true },
			warning_diagnostic_selected = { fg = "#aaecf8", bg = "#232338", bold = true, italic = true },
			error_selected = { fg = "#bf4a7f", bg = "#232338", bold = true, italic = true },
			error_diagnostic_selected = { fg = "#bf4a7f", bg = "#232338", bold = true, italic = true },
		}
	}
}
