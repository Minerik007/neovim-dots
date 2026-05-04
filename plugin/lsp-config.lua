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
                automatic_enable = true,
                ensure_installed = { 'lua_ls' }
            })
        end
    },
}
