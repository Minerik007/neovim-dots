if false then return {} end
return {
    'vyfor/cord.nvim',
    build = ':Cord update',
    opts = function()
        return {
            display = {
                theme = 'default',
                flavor = 'dark',
            },
            variables = {
                filename = 'a file',
                problems = function() return #vim.diagnostic.get(0) end,
                file_type = function() return vim.bo.filetype end,
            },
            text = {
                editing = 'Coding in ${file_type} - ${problems} problems',
                viewing = 'Viewing ${file_type} file - ${problems} problems',
                file_browser = 'Browsing files in ${tooltip}',
                workspace = '',
            },
            buttons = {
                {
                    label = 'my config',
                    url = 'https://github.com/Minerik007/neovim-dots'
                }
            }
        }
    end
}
