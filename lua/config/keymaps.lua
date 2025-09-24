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
    { "<leader>d", desc = "Debug"},
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

-- AI
map('i', '<M-a>', require('minuet.virtualtext').action.accept, { desc = 'Accept', silent = true })
map('i', '<M-]>', require('minuet.virtualtext').action.next, { desc = 'Next', silent = true })
map('i', '<M-[>', require('minuet.virtualtext').action.prev, { desc = 'Previous', silent = true })
map('i', '<M-z>', require('minuet.virtualtext').action.accept_n_lines, { desc = 'Accept n lines', silent = true })
map('i', '<M-e>', require('minuet.virtualtext').action.dismiss, { desc = 'Dismiss', silent = true })

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

-- LazyGit
map('n', '<leader>gg', ':LazyGit<CR>', { desc = "LazyGit", silent = true })

-- Lazy
map('n', '<leader>ll', ':Lazy<CR>', { desc = "Lazy", silent = true })
map('n', '<leader>lx', ':Lazy clean<CR>', { desc = "Lazy clean", silent = true })
map('n', '<leader>lu', ':Lazy update<CR>', { desc = "Lazy update", silent = true })
map('n', '<leader>li', ':Lazy install<CR>', { desc = "Lazy install", silent = true })
map('n', '<leader>ls', ':Lazy sync<CR>', { desc = "Lazy sync", silent = true })
map('n', '<leader>lo', ':Lazy log<CR>', { desc = "Lazy log", silent = true })

-- Debug
map('n', '<leader>db', function() dap.toggle_breakpoint() end, { desc = 'Toggle Breakpoint', silent = true })
map('n', '<leader>dc', function() dap.continue() end, { desc = 'Debug cotinue', silent = true })
