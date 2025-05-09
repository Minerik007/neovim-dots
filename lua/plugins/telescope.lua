return {
    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    },
                    file_browser = {
                        hijack_netrw = true
                    }
                }
            }
            require("telescope").load_extension("ui-select")
            require("telescope").load_extension("file_browser")
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
}
