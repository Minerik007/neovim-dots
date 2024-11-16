return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = { 'nvim-tree/nvim-web-devicons', 'ojroques/nvim-bufdel' },
    config = function()
        require("bufferline").setup{
            options = {
                separator_style = "slope"
            }
        }
    end
}
