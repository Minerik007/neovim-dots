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
map('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

-- Tabs
map('n', '<C-,>', '<Cmd>BufferPrevious<CR>', { desc = 'Previous Tab'})
map('n', '<C-.>', '<Cmd>BufferNext<CR>', { desc = 'Next Tab'})
map('n', '<A-,>', '<Cmd>BufferMovePrevious<CR>', { desc = 'Move Tab Left'})
map('n', '<A-.>', '<Cmd>BufferMoveNext<CR>', { desc = 'Move Tab Right'})
map('n', '<leader>tc', '<Cmd>BufferClose<CR>', { desc = 'Close Tab'})

-- Save file
map('n', '<leader>w', ':w<CR>', { desc = 'Save file' })

-- Neo-tree
map('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle Neo-tree' })
map('n', '<leader>r', ':Neotree focus<CR>', { desc = 'Focus Neo-tree' })

-- Open Dashboard
map('n', '<leader>;', ':Alpha<CR>', { desc = 'Open Dashboard'})

-- Quit NeoVim
map('n', '<leader>q', ':confirm q<CR>', { desc = 'Quit NeoVim' })

-- Keep visual mode active after indenting
map('v', '>', '>gv', { noremap = true, silent = true })
map('v', '<', '<gv', { noremap = true, silent = true })

-- LSP
map('n', 'K', vim.lsp.buf.hover, {})
map('n', 'gd', vim.lsp.buf.definition, { desc = 'Definition' })
map('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code action' })

-- LazyGit
map('n', '<leader>gg', ':LazyGit<CR>', { desc = "LazyGit" })

-- Lazy
map('n', '<leader>ll', ':Lazy<CR>', { desc = "Lazy" })

-- Debug
map('n', '<leader>db', function() dap.toggle_breakpoint() end, { desc = 'Toggle Breakpoint'})
map('n', '<leader>dc', function() dap.continue() end, { desc = 'Debug cotinue'})
