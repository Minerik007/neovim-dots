-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 2 spaces for a tab
vim.opt.clipboard = "unnamedplus"

lvim.colorscheme = "catppuccin-mocha"
lvim.transparent_window = true

-- Enable soft wrapping for Markdown files
lvim.autocommands = {
    {
        "CursorMoved",
        {
            pattern = {"*.md", "*.txt"},
            command = "setlocal wrap linebreak nolist textwidth=0",
        }
    },
}

lvim.plugins = {
    { "lunarvim/colorschemes" },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
    -- Images    
    {
        "vhyrro/luarocks.nvim",
        priority = 1001, -- this plugin needs to run before anything else
        opts = {
            rocks = { "magick" },
        },
    },
    {
        "3rd/image.nvim",
        dependencies = { "luarocks.nvim" },
        opts = {}
    },
    -- MD files preview plugin
    { 'jbyuki/nabla.nvim' },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
        opts = {
            latex = { enabled = false },
            win_options = { conceallevel = { rendered = 2 } },
            on = {
                attach = function()
                    require('nabla').enable_virt({ autogen = true })
                end,
            },
        },
    },
    {
        "jakobkhansen/journal.nvim",
        config = function()
            require("journal").setup({
                filetpye = 'md',
                root = '~/Documents/Journals',
                date_format = '%d/%m/%Y',
                autocomplete_date_modifier = "end",

                journal = {
                    format = '%Y/%m/%d-journal',
                    frequency = { day = 1 },

                    entries = {
                        Dream = {
                            format = '%Y/%m/%d-dream',
                            frequency = { day = 1 },
                        }
                    }
                }
            })
        end,
    },

    --[[{
        'gorbit99/codewindow.nvim',
        init = function()
            require('codewindow').apply_default_keybinds()
        end,
        opts = {
            active_in_terminals = false, -- Should the minimap activate for terminal buffers
            auto_enable = true, -- Automatically open the minimap when entering a (non-excluded) buffer (accepts a table of filetypes)
            exclude_filetypes = { 'help' }, -- Choose certain filetypes to not show minimap on
            max_minimap_height = nil, -- The maximum height the minimap can take (including borders)
            max_lines = nil, -- If auto_enable is true, don't open the minimap for buffers which have more than this many lines.
            minimap_width = 15, -- The width of the text part of the minimap
            use_lsp = true, -- Use the builtin LSP to show errors and warnings
            use_treesitter = true, -- Use nvim-treesitter to highlight the code
            use_git = true, -- Show small dots to indicate git additions and deletions
            width_multiplier = 4, -- How many characters one dot represents
            z_index = 1, -- The z-index the floating window will be on
            show_cursor = true, -- Show the cursor position in the minimap
            screen_bounds = 'background', -- How the visible area is displayed, "lines": lines above and below, "background": background color
            window_border = 'none', -- The border style of the floating window (accepts all usual options)
            relative = 'win', -- What will be the minimap be placed relative to, "win": the current window, "editor": the entire editor
            events = { 'TextChanged', 'InsertLeave', 'DiagnosticChanged', 'FileWritePost' } -- Events that update the code window
        },
    }]]--
}

-- Godot
local dap = require('dap')
dap.adapters.godot = {
  type = "server",
  host = '127.0.0.1',
  port = 6006,
}

dap.configurations.gdscript = {
  {
    type = "godot",
    request = "launch",
    name = "Launch scene",
    project = "${workspaceFolder}",
    launch_scene = true,
  }
}

require'lspconfig'.gdscript.setup{
  filetypes = { "gd", "gdscript", "gdscript3" },
}


require("image").setup({
  backend = "kitty",
  processor = "magick_rock", -- or "magick_cli"
  integrations = {
    markdown = {
      enabled = true,
      clear_in_insert_mode = true,
      download_remote_images = true,
      only_render_image_at_cursor = true,
      filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
    },
    neorg = {
      enabled = true,
      filetypes = { "norg" },
    },
    typst = {
      enabled = true,
      filetypes = { "typst" },
    },
    html = {
      enabled = false,
    },
    css = {
      enabled = false,
    },
  },
  max_width = nil,
  max_height = nil,
  max_width_window_percentage = nil,
  max_height_window_percentage = 50,
  window_overlap_clear_enabled = false, -- toggles images when windows are overlapped
  window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
  editor_only_render_when_focused = false, -- auto show/hide images when the editor gains/looses focus
  tmux_show_only_in_active_window = false, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
  hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" }, -- render image files as images when opened
})

