return {
    "catppuccin/nvim",
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "catppuccin"
    end
}
