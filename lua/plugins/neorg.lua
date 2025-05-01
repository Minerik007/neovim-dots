return {
    {
        "nvim-neorg/neorg",
        lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
        version = "*", -- Pin Neorg to the latest stable release
        config = function ()
            require("neorg").setup({
                load = {
                    ["core.defaults"] = {},
                    ["external.pandoc"] = {},
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
                },
            })
        end
    },
    {
        "champignoom/norg-pandoc",
        branch = "neorg-plugin",
        config = true,
    },
}
