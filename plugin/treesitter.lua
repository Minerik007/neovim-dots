vim.pack.add {
  { src = "https://github.com/romus204/tree-sitter-manager.nvim" }
}

require("tree-sitter-manager").setup({
    languages = {
        norg = {
            install_info = {
                url = "https://github.com/nvim-neorg/tree-sitter-norg",
                revision = "35e2a51fce194d064bc32233b6bffa89cf234580"
            },
        },
        norg_meta = {
            install_info = {
                url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
            },
        },
    },
    ensure_installed = { "bash", "norg", "norg_meta", "lua", "markdown", "query" },
    auto_install = true,

    -- Default Options
    -- ensure_installed = {}, -- list of parsers to install at the start of a neovim session
    -- border = nil, -- border style for the window (e.g. "rounded", "single"), if nil, use the default border style defined by 'vim.o.winborder'. See :h 'winborder' for more info.
    -- auto_install = false, -- if enabled, install missing parsers when editing a new file
    -- highlight = true, -- treesitter highlighting is enabled by default
    -- languages = {}, -- override or add new parser sources
    -- parser_dir = vim.fn.stdpath("data") .. "/site/parser",
    -- query_dir = vim.fn.stdpath("data") .. "/site/queries",
})

vim.filetype.add({
    extension = {
        ebuild = 'bash',
        conf = 'bash',
    }
})
