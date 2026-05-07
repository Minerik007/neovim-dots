vim.cmd.packadd("which-key.nvim")
local wk = require("which-key")
vim.cmd.packadd("telescope.nvim")
local telescope = require('telescope.builtin')
vim.cmd.packadd("smart-splits")

local map = vim.keymap.set

-- Define groups of keymaps in which-key plugin
wk.add({
    { "<leader>f", desc = "Search" },
    { "<leader>c", desc = "LSP" },
    { "<leader>g", desc = "git" },
    { "<leader>t", desc = "Tabs"},
    { "<leader>b", desc = "Buffers"},
})

-- Define keymaps

-- Telescope
map('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files', silent = true })
map('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep', silent = true })
map('n', '<leader>fv', ":lua require('telescope.builtin').live_grep({grep_open_files=true})<CR>", { desc = 'Telescope live grep buffers', silent = true })
map('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers', silent = true })
map('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags', silent = true })
map('n', '<leader>ft', ':TodoTelescope<CR>', { desc = 'Telescope todo comments', silent = true })
map('n', '<leader>fe', ":Telescope file_browser<CR>", { desc = 'Telescope file browser', silent = true })
map('n', '<leader>fd', telescope.lsp_document_symbols, { desc = 'Telescope list symbols', silent = true })

-- Tabs
map('n', '<leader>tt', ':ToggleTerm<CR>', { desc = "Open terminal", silent = true })
map('n', '<leader>tf', ':ToggleTerm direction=float<CR>', { desc = "Open floating terminal", silent = true })
map('n', '<leader>tc', ':tabc<CR>', { desc = 'Close tab', silent = true })
map('n', '<leader>tn', ':tabnew<CR>', { desc = 'New tab', silent = true })

-- Buffers
map('n', '<leader>bd', ':bd<CR>', { desc = 'Delete  buffer', silent = true })

-- Save file
map('n', '<leader>w', ':w<CR>', { desc = 'Save file', silent = true })

-- Neorg
map('n', '<leader>n', ':Neorg workspace notes<CR>', { desc = 'Neorg Notes', silent = true })


-- Screenshot
map('v', '<leader>s', function() require("nvim-silicon").clip() end, { desc = 'Screenshot Code', silent = true })

-- Make it rain!
map('n', '<leader>z', ':CellularAutomaton make_it_rain<CR>', { desc = 'Make it rain!', silent = true })

-- Open Dashboard
map('n', '<leader>;', ':Alpha<CR>', { desc = 'Open Dashboard', silent = true })

-- Quit Neovim
map('n', '<leader>q', ':confirm qa<CR>', { desc = 'Quit NeoVim' })

-- Keep visual mode active after indenting
map('v', '>', '>gv', { noremap = true, silent = true })
map('v', '<', '<gv', { noremap = true, silent = true })

-- LSP
map('n', 'K', vim.lsp.buf.hover, { silent = true })
map('n', 'gd', vim.lsp.buf.definition, { desc = 'Definition', silent = true })
map('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code action', silent = true })

-- Smart Splits
map('n', '<A-h>', require('smart-splits').resize_left, { desc = 'Resize Buffer Left' })
map('n', '<A-j>', require('smart-splits').resize_down, { desc = 'Resize Buffer Down' })
map('n', '<A-k>', require('smart-splits').resize_up, { desc = 'Resize Buffer Up' })
map('n', '<A-l>', require('smart-splits').resize_right, { desc = 'Resize Buffer Right' })
-- moving between splits
map('n', '<C-h>', require('smart-splits').move_cursor_left, { desc = 'Move Cursor Left' })
map('n', '<C-j>', require('smart-splits').move_cursor_down, { desc = 'Move Cursor Down' })
map('n', '<C-k>', require('smart-splits').move_cursor_up, { desc = 'Move Cursor Up' })
map('n', '<C-l>', require('smart-splits').move_cursor_right, { desc = 'Move Cursor Right' })
map('n', '<C-\\>', require('smart-splits').move_cursor_previous, { desc = 'Swap Buffer Previous' })
-- swapping buffers between windows
map('n', '<leader><leader>h', require('smart-splits').swap_buf_left, { desc = 'Swap Buffer Left' })
map('n', '<leader><leader>j', require('smart-splits').swap_buf_down, { desc = 'Swap Buffer Down' })
map('n', '<leader><leader>k', require('smart-splits').swap_buf_up, { desc = 'Swap Buffer Up' })
map('n', '<leader><leader>l', require('smart-splits').swap_buf_right, { desc = 'Swap Buffer Right' })
