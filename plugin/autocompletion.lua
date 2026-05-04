vim.pack.add({
    'https://github.com/nvim-mini/mini.icons',
    'https://github.com/L3MON4D3/LuaSnip',
    'https://github.com/rafamadriz/friendly-snippets',
    'https://github.com/saghen/blink.lib',
    'https://github.com/saghen/blink.cmp',
    'https://github.com/onsails/lspkind.nvim',
})

require("luasnip").setup()
require("luasnip.loaders.from_vscode").lazy_load()

require("blink.cmp").setup({
    keymap = { preset = "enter" },
    appearance = { nerd_font_variant = "mono" },
    completion = {
        documentation = {
            auto_show = true,
            window = { border = "rounded" },
        },
        menu = {
            border = "rounded",
            draw = {
                components = {
                    kind_icon = {
                        text = function(ctx)
                            if ctx.source_name ~= "Path" then
                                return require("lspkind").symbol_map[ctx.kind] or "" .. ctx.icon_gap
                            end

                            local is_unknown_type = vim.tbl_contains({ "link", "socket", "fifo", "char", "block", "unknown" }, ctx.item.data.type)
                            local mini_icon, _ = require("mini.icons").get(
                                is_unknown_type and "os" or ctx.item.data.type,
                                is_unknown_type and "" or ctx.label
                            )

                            return (mini_icon or ctx.kind_icon) .. ctx.icon_gap
                        end,

                        highlight = function(ctx)
                            if ctx.source_name ~= "Path" then return ctx.kind_hl end

                            local is_unknown_type = vim.tbl_contains({ "link", "socket", "fifo", "char", "block", "unknown" }, ctx.item.data.type)
                            local mini_icon, mini_hl = require("mini.icons").get(
                                is_unknown_type and "os" or ctx.item.data.type,
                                is_unknown_type and "" or ctx.label
                            )
                            return mini_icon ~= nil and mini_hl or ctx.kind_hl
                        end,
                    }
                }
            }
        },
    },
    snippets = { preset = "luasnip" },
    sources = {
        default = { "lsp", "path", "snippets", "buffer" }
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
})
