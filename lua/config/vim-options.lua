vim.g.mapleader = " " -- leader key
vim.g.maplocalleader = "\\"

vim.opt.expandtab = true
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 4 spaces for a tab
vim.opt.smartindent = true

vim.opt.clipboard = "unnamedplus" -- clipboard sync
vim.opt.confirm = true
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true -- relative numbers


-- Move to last character of previous line
vim.opt.whichwrap:append("<,>,[,],h,l")

-- Enable persistent undo
vim.opt.undofile = true  -- Enable undofile
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undo"  -- Set the directory for undo files
vim.opt.undolevels = 1000  -- Set the maximum number of undo levels

vim.cmd("highlight Comment cterm=italic gui=italic")

-- Debugger icons
vim.fn.sign_define("DiagnosticSignError", {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",{text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",{text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",{text = "󰌵", texthl = "DiagnosticSignHint"})

vim.cmd("hi DapBreakpointColor guifg=#fa4848")
vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DapBreakpointColor", linehl = "", numhl = "" })

vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

vim.api.nvim_create_autocmd("CursorMoved", {
    pattern = "*.md",
    callback = function()
        vim.wo.wrap = true
        vim.wo.linebreak = true
    end,
})

