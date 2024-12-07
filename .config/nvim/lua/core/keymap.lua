local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- prettier formatting
map("n", "<Space>pp", "<Cmd>Prettier<CR>", opts)

-- nvim-tree
map("n", "<C-T>", "<Cmd>NvimTreeFindFileToggle<CR>", opts)

-- ranger file manager
map("n", "<C-N>", "<Cmd>Ranger<CR>", opts)

-- comments
map("n", "<Space>ac", "<Plug>(comment_toggle_linewise_current)", opts)
map("n", "<Space>ab", "<Plug>(comment_toggle_blockwise_current)", opts)
map("n", "<Space>aC", "<Plug>(comment_toggle_linewise_count)", opts)
map("n", "<Space>aB", "<Plug>(comment_toggle_blockwise_count)", opts)

-- telescope general
map("n", "<Space>te", "<Cmd>Telescope<CR>", opts)
map("n", "<Space>tb", "<Cmd>Telescope buffers<CR>", opts)
map("n", "<Space>tc", "<Cmd>Telescope commands<CR>", opts)
map("n", "<Space>tf", "<Cmd>Telescope find_files<CR>", opts)
map("n", "<Space>tg", "<Cmd>Telescope live_grep<CR>", opts)
map("n", "<Space>tk", "<Cmd>Telescope keymaps<CR>", opts)
map("n", "<Space>ts", "<Cmd>Telescope spell_suggest<CR>", opts)

-- telescope git
map("n", "<Space>gb", "<Cmd>Telescope git_branches<CR>", opts)
map("n", "<Space>gc", "<Cmd>Telescope git_commits<CR>", opts)
map("n", "<Space>gC", "<Cmd>Telescope git_bcommits<CR>", opts)
map("n", "<Space>gs", "<Cmd>Telescope git_status<CR>", opts)
map("n", "<Space>gS", "<Cmd>Telescope git_files<CR>", opts)

-- lazygit
map("n", "<Space>gl", "<Cmd>LazyGit<CR>", opts)

-- gitsigns
map("n", "<Space>ss", "<Cmd>Gitsigns stage_hunk<CR>", opts)
map("n", "<Space>sr", "<Cmd>Gitsigns reset_hunk<CR>", opts)
map("n", "<Space>ss", "<Cmd>Gitsigns stage_buffer<CR>", opts)
map("n", "<Space>su", "<Cmd>Gitsigns undo_stage_hunk<CR>", opts)
map("n", "<Space>sR", "<Cmd>Gitsigns reset_buffer<CR>", opts)
map("n", "<Space>sp", "<Cmd>Gitsigns preview_hunk<CR>", opts)
map("n", "<Space>sb", "<Cmd>Gitsigns blame_line<CR>", opts)
map("n", "<Space>stb", "<Cmd>Gitsigns toggle_current_blame_line<CR>", opts)
map("n", "<Space>sd", "<Cmd>Gitsigns diffthis<CR>", opts)
map("n", "<Space>std", "<Cmd>Gitsigns toggle_deleted<CR>", opts)

-- folding
map("n", "fo", "<Cmd>foldopen<CR>", opts)
map("n", "fk", "<Cmd>foldclose<CR>", opts)
map("n", "fi", "<Cmd>set foldmethod=indent<CR>", opts)
map("n", "fm", "<Cmd>set foldmethod=manual<CR>", opts)

-- ufo folding
vim.keymap.set("n", "fO", require("ufo").openAllFolds)
vim.keymap.set("n", "fK", require("ufo").closeAllFolds)

-- terminal navigation
map('t', '<esc>', [[<C-\><C-n>]], opts)

-- window navigation
map("", "<Space>wh", "<C-w>h", opts)
map("", "<Space>wj", "<C-w>j", opts)
map("", "<Space>wk", "<C-w>k", opts)
map("", "<Space>wl", "<C-w>l", opts)
map("", "<Space>ww", "<C-w>w", opts)

-- window management
map("", "<Space>wv", "<C-w>v", opts)
map("", "<Space>ws", "<C-w>s", opts)
map("", "<Space>wx", "<C-w>x", opts)
map("", "<Space>wq", "<C-w>q", opts)
map("", "<Space>w+", "<C-w>+", opts)
map("", "<Space>w-", "<C-w>-", opts)
map("", "<Space>w>", "<C-w>>", opts)
map("", "<Space>w<", "<C-w><", opts)

-- buffer navigation
map("n", "<Space>0", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<Space>1", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<Space>2", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<Space>3", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<Space>4", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<Space>5", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<Space>6", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<Space>7", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<Space>8", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<Space>-1", "<Cmd>BufferLast<CR>", opts)

-- buffer management
map("n", "<Space>q", "<Cmd>BufferClose<CR>", opts)
map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- trouble
-- map("n", "<Space>dt", "<Cmd>TroubleToggle<CR>", opts)
-- map("n", "<Space>dw", "<Cmd>TroubleToggle workspace_diagnostics<CR>", opts)
-- map("n", "<Space>dd", "<Cmd>TroubleToggle document_diagnostics<CR>", opts)
-- map("n", "<Space>dq", "<Cmd>TroubleToggle quickfix<CR>", opts)
-- map("n", "<Space>dl", "<Cmd>TroubleToggle lsp_references<CR>", opts)

-- trouble integrated gitsigns
map("n", "<Space>dQ", "<Cmd>Gitsigns setqflist<CR>", opts)
map("n", "<Space>dL", "<Cmd>Gitsigns setloclist<CR>", opts)

-- trouble integrated todo-comments
map("n", "<Space>dc", "<Cmd>TodoTrouble<CR>", opts)

-- telescope integrated todo-comments
map("n", "<Space>dC", "<Cmd>TodoTelescope<CR>", opts)

-- treesitter context
map("n", "<Space>ct", "<Cmd>TSContextToggle<CR>", opts)

-- glow
map("n", "<Space>pm", "<Cmd>Glow<CR>", opts) -- preview markdown

-- neogen
map("n", "<Space>ng", "<Cmd>Neogen<CR>", opts) -- annotation generrator

-- inc-rename
map("n", "<Space>rn", ":IncRename ", opts) -- visual LSP renaming

-- flash code navigation
map("n", "<Space>fj", "<Cmd>lua require('flash').jump()<CR>", opts)
map("n", "<Space>ft", "<Cmd>lua require('flash').treesitter()<CR>", opts)
map("n", "<Space>fr", "<Cmd>lua require('flash').remote()<CR>", opts)
map("n", "<Space>fs", "<Cmd>lua require('flash').treesitter_search()<CR>", opts)
map("n", "<Space>ff", "<Cmd>lua require('flash').toggle()<CR>", opts)

-- toggleterm
-- these start with the 'l' key purely for ergonomics.
map("n", "<Space>lj", "<Cmd>ToggleTerm size=12 direction=horizontal<CR>", opts)
map("n", "<Space>ll", "<Cmd>ToggleTerm size=45 direction=vertical<CR>", opts)
map("n", "<Space>lf", "<Cmd>ToggleTerm direction=float<CR>", opts)
map("n", "<Space>lt", "<Cmd>ToggleTerm direction=tab name=terminal<CR>", opts)
map("n", "<Space>lT", "<Cmd>ToggleTermToggleAll<CR>", opts)
