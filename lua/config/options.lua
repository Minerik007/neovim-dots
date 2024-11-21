-- User Configuration

-- Colorscheme 
require("catppuccin").setup({
    transparent_background = false,
})
vim.cmd.colorscheme "catppuccin"
-- To add colorschemes go to nvim/lua/plugins/colorschemes.lua and add plugin for your colorscheme

-- Debbugers
local dap = require('dap')

-- Godot Debbuger
dap.adapters.godot = {
    type = "server",
    host = '127.0.0.1',
    port = 6006,
}

dap.configurations.gdscript = {
    {
        type = "godot",
        request = "launch",
        name = "Launch scene",
        project = "${workspaceFolder}",
    }
}

require'lspconfig'.gdscript.setup{
    filetypes = { "gd", "gdscript", "gdscript3" },
}

-- .NET Debbuger
dap.adapters.coreclr = {
    type = 'executable',
    command = '/usr/bin/netcoredbg',
    args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
    {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
        end,
    },
}

require'lspconfig'.csharp_ls.setup{}
