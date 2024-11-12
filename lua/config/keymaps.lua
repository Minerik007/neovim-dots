local wk = require("which-key")

local telescope = require('telescope.builtin')

-- Define groups of keymaps in which-key plugin
wk.add({
    { "<leader>f", desc = "Telescope" },
    { "<leader>c", desc = "LSP" },
    { "<leader>g", desc = "git" }
})

-- Define keymaps

-- Telescope
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

-- Save file
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })

-- Neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle Neo-tree' })
vim.keymap.set('n', '<leader>d', ':Neotree focus<CR>', { desc = 'Focus Neo-tree' })

-- Quit NeoVim
vim.keymap.set('n', '<leader>q', ':confirm qa<CR>', { desc = 'Quit NeoVim' })

-- Keep visual mode active after indenting
vim.keymap.set('v', '>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true })

-- LSP
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Definition' })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code action' })

-- LazyGit
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', { desc = "LazyGit" })
