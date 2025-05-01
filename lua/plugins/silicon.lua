return {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    main = "nvim-silicon",
    opts = {
        font = "JetBrainsMono Nerd Font",
        theme = "Catppuccin Mocha",
        to_clipboard = true,
        background = "#11111b",
        shadow_color = "#000000",
        window_title = function()
            return vim.fn.fnamemodify(
                vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()),
                ":t"
            )
        end,
    }
}
