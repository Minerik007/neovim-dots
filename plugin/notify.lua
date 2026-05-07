vim.pack.add({
    'https://github.com/nvim-lua/plenary.nvim',
    {
        src = 'https://github.com/rcarriga/nvim-notify',
        name = 'notify',
    }
})
require("notify").setup({
    background_colour = "#000000",
})
