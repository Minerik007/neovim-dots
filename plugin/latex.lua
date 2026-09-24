vim.pack.add { { src = "https://github.com/lervag/vimtex", version = "v2.15" } }
vim.g.vimtex_compiler_latexmk_engines = { _ = '-lualatex' }
vim.g.vimtex_view_method = "zathura"
