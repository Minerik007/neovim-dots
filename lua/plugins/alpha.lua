return {
    "goolord/alpha-nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require 'alpha'
        local dashboard = require 'alpha.themes.dashboard'

        local logo = [[
                                             
      ████ ██████           █████      ██
     ███████████             █████ 
     █████████ ███████████████████ ███   ███████████
    █████████  ███    █████████████ █████ ██████████████
   █████████ ██████████ █████████ █████ █████ ████ █████
 ███████████ ███    ███ █████████ █████ █████ ████ █████
██████  █████████████████████ ████ █████ █████ ████ ██████    
        ]]
        
        local minerik = [[
███╗   ███╗██╗███╗   ██╗███████╗██████╗ ██╗██╗  ██╗
████╗ ████║██║████╗  ██║██╔════╝██╔══██╗██║██║ ██╔╝
██╔████╔██║██║██╔██╗ ██║█████╗  ██████╔╝██║█████╔╝ 
██║╚██╔╝██║██║██║╚██╗██║██╔══╝  ██╔══██╗██║██╔═██╗ 
██║ ╚═╝ ██║██║██║ ╚████║███████╗██║  ██║██║██║  ██╗
╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝
        ]]

        local logo2 = [[
 ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ 
▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   
         ░    ░  ░    ░ ░        ░   ░         ░   
         ]]

        dashboard.section.header.val = vim.split(logo2, '\n')
        dashboard.section.header.opts.hl = "Directory"
        dashboard.section.buttons.val = {
            dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
            dashboard.button('f', '  Find file', ':Telescope find_files hidden=true no_ignore=true <CR>'),
            dashboard.button('t', '  Find text', ':Telescope live_grep <CR>'),
            dashboard.button('r', '󰄉  Recent files', ':Telescope oldfiles <CR>'),
            dashboard.button('u', '󱐥  Update', '<cmd>Lazy update<CR>'),
            dashboard.button('c', '  Config', ':cd $HOME/.config/nvim | silent Telescope find_files no_ignore=true<CR>'),
            dashboard.button('q', '󰿅  Quit', '<cmd>qa<CR>'),
        }
        local handle = io.popen("fortune -c | sed '2d'")
        local result = handle:read("*a")
        handle:close()
        dashboard.section.footer.val = result

        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)
    end,
}
