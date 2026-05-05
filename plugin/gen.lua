vim.pack.add({
    'https://github.com/David-Kunz/gen.nvim',
})
require('gen').setup({
    model = 'fredrezones55/Qwen3.5-Uncensored-HauhauCS-Aggressive:9b',
    host = 'localhost',
    port = '11434',
})
