-- User Configuration

-- Colorscheme
if true then -- toggle transparency
    require("catppuccin").setup({
        transparent_background = true,
        float = {
            transparent = true, -- enable transparent floating windows
            solid = false, -- use solid styling for floating windows, see |winborder|
        },
    })
    require("notify").setup({
        background_colour = "#000000",
    })
end
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

vim.api.nvim_create_autocmd("FileType", {
    pattern = "gdscript",
    callback = function()
        vim.opt_local.expandtab = true
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
    end,
})

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
