# A True Intergalactic Expirience
My awesome Neovim config ✨

# Instalation for Linux:
Dependencies:
 - Nerd Font
 - tree-sitter-cli
 - lazygit (optional but recommended if you want to use it with github) 
You need to install these dependencies or my config will not work as expected.

Make a backup of your current neovim files.
```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Clone my config.
```bash
cd ~/.config/nvim & git clone https://github.com/Minerik007/neovim-dots .
```

Remove the `.git`  folder, so you can add it to your own repo later
```bash
rm -rf ~/.config/nvim/.git
```

And now you can start Neovim.
If you encounter any issues please [report it](https://github.com/Minerik007/neovim-dots/issues/new) 

# Debbugers
The [Debug-Adapter Installation](https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation) wiki is beautiful guide for installation and configuration of debbugers. Configuration please put into user options file. It is located in 'nvim/lua/config/options.lua'
