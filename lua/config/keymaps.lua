local wk = require("which-key")
local telescope = require('telescope.builtin')
local dap = require('dap')

local map = vim.keymap.set

-- Define groups of keymaps in which-key plugin
wk.add({
    { "<leader>f", desc = "Search" },
    { "<leader>c", desc = "LSP" },
    { "<leader>g", desc = "git" },
    { "<leader>l", desc = "Lazy" },
    { "<leader>t", desc = "Tabs"},
    { "<leader>d", desc = "Debug"}
})

-- Define keymaps

-- Telescope
map('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files', silent = true })
map('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep', silent = true })
map('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers', silent = true })
map('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags', silent = true })

-- Tabs
map('n', '<C-,>', '<Cmd>BufferPrevious<CR>', { desc = 'Previous Tab', silent = true })
map('n', '<C-.>', '<Cmd>BufferNext<CR>', { desc = 'Next Tab', silent = true })
map('n', '<A-,>', '<Cmd>BufferMovePrevious<CR>', { desc = 'Move Tab Left', silent = true })
map('n', '<A-.>', '<Cmd>BufferMoveNext<CR>', { desc = 'Move Tab Right', silent = true })
map('n', '<leader>tc', '<Cmd>BufferClose<CR>', { desc = 'Close Tab', silent = true })

-- Save file
map('n', '<leader>w', ':w<CR>', { desc = 'Save file', silent = true })

-- Neo-tree
map('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle Neo-tree', silent = true })
map('n', '<leader>r', ':Neotree focus<CR>', { desc = 'Focus Neo-tree', silent = true })

-- Open Dashboard
map('n', '<leader>;', ':Neotree close<CR> :Alpha<CR>', { desc = 'Open Dashboard', silent = true })

-- Quit NeoVim
map('n', '<leader>q', ':Neotree close<CR> :confirm q<CR>', { desc = 'Quit NeoVim' })

-- Keep visual mode active after indenting
map('v', '>', '>gv', { noremap = true, silent = true })
map('v', '<', '<gv', { noremap = true, silent = true })

-- LSP
map('n', 'K', vim.lsp.buf.hover, { silent = true })
map('n', 'gd', vim.lsp.buf.definition, { desc = 'Definition', silent = true })
map('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code action', silent = true })

-- LazyGit
map('n', '<leader>gg', ':LazyGit<CR>', { desc = "LazyGit", silent = true })

-- Lazy
map('n', '<leader>ll', ':Lazy<CR>', { desc = "Lazy", silent = true })
map('n', '<leader>lc', ':Lazy clean<CR>', { desc = "Lazy clean", silent = true })
map('n', '<leader>lu', ':Lazy update<CR>', { desc = "Lazy update", silent = true })
map('n', '<leader>li', ':Lazy install<CR>', { desc = "Lazy install", silent = true })
map('n', '<leader>ls', ':Lazy sync<CR>', { desc = "Lazy sync", silent = true })
map('n', '<leader>lo', ':Lazy log<CR>', { desc = "Lazy log", silent = true })

-- Debug
map('n', '<leader>db', function() dap.toggle_breakpoint() end, { desc = 'Toggle Breakpoint', silent = true })
map('n', '<leader>dc', function() dap.continue() end, { desc = 'Debug cotinue', silent = true })
