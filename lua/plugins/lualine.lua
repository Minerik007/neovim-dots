return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
        local function get_current_song()
            local handle = io.popen('playerctl -s -p firefox metadata --format "{{ title }} - {{ artist }}"')
            local current_track = handle:read("*a")
            handle:close()

            if current_track and current_track ~= "" then
                return current_track:gsub("\n", "")  -- Remove newline characters
            else
                return "No track playing"
            end
        end

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
                lualine_x = { get_current_song, 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' }
            },
        })
    end
}
