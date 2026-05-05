vim.pack.add({
    'https://github.com/nvim-mini/mini.trailspace'
})
require('mini.trailspace').setup()

vim.b.minitrailspace_disable = true

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    MiniTrailspace.trim()
    MiniTrailspace.trim_last_lines()
  end,
})
