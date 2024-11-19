return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = { 'nvim-tree/nvim-web-devicons', 'ojroques/nvim-bufdel' },
    config = function()
        require("bufferline").setup{
            options = {
                separator_style = "slope",
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,
            }
        }
    end
}
