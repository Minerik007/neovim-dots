vim.pack.add({
    'https://github.com/pysan3/pathlib.nvim',
    'https://github.com/nvim-neotest/nvim-nio',
    'https://github.com/3rd/image.nvim',
    'https://github.com/nvim-neorg/lua-utils.nvim',
    'https://github.com/nvim-neorg/neorg',
})
require("neorg").setup({
    load = {
        ["core.defaults"] = {},
        ["core.latex.renderer"] = {
            config = {
                conceal = true,
                render_on_enter = true,
            }
        },
        ["core.concealer"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    notes = "~/Documents/Notes",
                },
            },
        },
        ["core.integrations.treesitter"] = {
            configure_parsers = true
        }
    },
})
