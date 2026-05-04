-- User Configuration

-- Colorscheme
vim.cmd.packadd("catppuccin")
if true then -- toggle transparency
    require("catppuccin").setup({
        transparent_background = true,
        float = {
            transparent = true, -- enable transparent floating windows
            solid = false, -- use solid styling for floating windows, see |winborder|
        },
    })
end
vim.cmd.colorscheme "catppuccin"
