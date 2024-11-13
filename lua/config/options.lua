-- User Configuration

-- Godot Debbuger
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
  }
}

require'lspconfig'.gdscript.setup{
  filetypes = { "gd", "gdscript", "gdscript3" },
}

