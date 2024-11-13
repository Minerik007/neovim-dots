return {
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim" },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            local lspconfig = require('lspconfig')
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            require('mason').setup({})
            require('mason-lspconfig').setup({
              ensure_installed = { 'lua_ls' }
            })

            require('mason-lspconfig').setup_handlers({
              function(server)
                    lspconfig[server].setup({
                        capabalities = capabalities
                    })
              end,
            })
        end
    },
}
