# A True Intergalactic Expirience
My awesome Neovim config ✨

# Instalation for Linux:
Dependencies:
 - Nerd Font
 - tree-sitter-cli
 - playerctl
 - lazygit (optional but recommended if you want to use github)
 - fortune (optional)

> [!WARNING]
> You need to install these dependencies or my config will not work as expected.

### Make a backup of your current neovim files.
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
cd ~/.config/nvim & git clone https://github.com/Minerik007/neovim-dots .
```

### Remove the `.git`  folder, so you can add it to your own repo later
```bash
rm -rf ~/.config/nvim/.git
```
### AI (optional)
If you want AI virtual text you need to download Llama.cpp
```bash
yay -Sy llama.cpp-vulkan
```
Then run this command to download and run AI.
```bash
llama-server \
          -hf ggml-org/Qwen2.5-Coder-1.5B-Q8_0-GGUF \
          -ngl 99 -fa -ub 1024 -b 1024 \
          --ctx-size 0 --cache-reuse 256
```
> [!WARNING]
> Maybe you need to change llama-server settings to match your setup. It can cause system freeze or lag otherwise.

And now you can start Neovim.
If you encounter any issues please [report it](https://github.com/Minerik007/neovim-dots/issues/new) 

# Debbugers
The [Debug-Adapter Installation](https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation) wiki is beautiful guide for installation and configuration of debbugers. Configuration please put into user options file. It is located in 'nvim/lua/config/options.lua'. And if you want only code snippets with LSP use ':Mason' command and select your prefered LSP.
