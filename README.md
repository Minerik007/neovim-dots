# A True Intergalactic Experience

My awesome Neovim config ✨

# Installation for Linux

## Dependencies

- Nerd Font
- tree-sitter-cli
- LaTeX
- lazygit (optional but recommended if you want to use git)
- Ollama (optional)

> [!WARNING]
> You need to install these dependencies or my config will not work as expected.

### Make a backup of your current Neovim files.

```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

### Clone my config.

```bash
cd ~/.config/nvim && git clone https://github.com/Minerik007/neovim-dots .
```

### Remove the `.git` folder, so you can add it to your own repo later

```bash
rm -rf ~/.config/nvim/.git
```

### AI (optional)

If you want AI code review, you need to download Ollama, install your preferred model, and add your model name to `./plugin/gen.lua`.

You are now ready to start Neovim.

If you encounter any issues, please [report it](https://github.com/Minerik007/neovim-dots/issues/new).

# Debuggers

The [Debug-Adapter Installation](https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation) wiki is a beautiful guide for the installation and configuration of debuggers. Please configure these in your user options file. It is located in `nvim/lua/config/options.lua`. If you want to use only code snippets with LSP, use the `:Mason` command and select your preferred LSP.
