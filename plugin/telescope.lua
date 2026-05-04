vim.pack.add({
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvim-telescope/telescope.nvim',
    'https://github.com/nvim-telescope/telescope-file-browser.nvim',
})
require("telescope").setup {
    extensions = {
        file_browser = {
            hijack_netrw = true
        }
    }
}
require("telescope").load_extension("file_browser")
