return {
    'lmantw/themify.nvim',

    lazy = false,
    priority = 999,

    config = function()
        require("themify").setup({
            -- Here install your themes
            'folke/tokyonight.nvim',
            "catppuccin/nvim",
        })
    end,
}

