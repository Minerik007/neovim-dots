vim.pack.add({
    {
        src = 'https://github.com/mrjones2014/smart-splits.nvim',
        name = 'smart-splits',
        load = true,
    }
})
require('smart-splits').setup()
