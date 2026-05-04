vim.pack.add({
    'https://github.com/nvim-lualine/lualine.nvim',
})

local function fancy_mode()
    local mode_map = {
        n = "󰺕",        -- Normal
        i = "",        -- Insert
        v = "󰈈",        -- Visual
        V = "󰕞",        -- Visual Line
        [''] = "",   -- Visual Block
        c = "",        -- Command-line
        s = "󰒉",        -- Select
        S = "",        -- Select Line
        t = ""         -- Terminal
    }
    local current_mode = vim.api.nvim_get_mode().mode
    return mode_map[current_mode] or current_mode
end
require('lualine').setup({
    options = {
        globalstatus = true,
    },
    sections = {
        lualine_a = { fancy_mode },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { 'diagnostics', 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    }
})
