<h1 align="center">Tynvim 🐍</h1>

A great start with vim for a newbie like me 😛


## Contents
- [Contents](#contents)
- [Screenshots](#screenshots)
- [Requirements](#requirements)
- [Install](#install)
- [Structure](#structure)

## Screenshots
![Pic1](https://raw.githubusercontent.com/tynguyen2k1/files/main/nvim_image/Screenshot_nvim1.png)
![Pic2](https://raw.githubusercontent.com/tynguyen2k1/files/main/nvim_image/Screenshot_nvim2.png)
![Pic3](https://raw.githubusercontent.com/tynguyen2k1/files/main/nvim_image/Screenshot_nvim3.png)

## Requirements
- Neovim (version >=0.5.1 or nightly version)
- [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep) is required for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [Lazygit](https://github.com/jesseduffield/lazygit)
- A terminal that supports [nerdfonts](https://github.com/ryanoasis/nerd-fonts).

## Install
Step 1: Install packer:
```bash
git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Step 2: Clone this reponsitory (back up your config if you already had one):
```bash
git clone https://github.com/tynguyen2k1/nvim ~/.config/nvim
```
Step 3: Open nvim
```bash
nvim +PackerInstall
```
Step 5: Enjoy :)

## Structure
```
├── lua
│  ├── plugins
│  │  ├── galaxyline
│  │  │  ├── init.lua
│  │  │  ├── theme1.lua
│  │  │  └── theme2.lua
│  │  ├── lualine
│  │  │  ├── init.lua
│  │  │  └── theme1.lua
│  │  ├── autopairs.lua
│  │  ├── bufferline.lua
│  │  ├── colorizer.lua
│  │  ├── comment.lua
│  │  ├── gitsigns.lua
│  │  ├── indent-blankline.lua
│  │  ├── lsp-config.lua
│  │  ├── lsp-installer.lua
│  │  ├── lsp_signature.lua
│  │  ├── null-ls.lua
│  │  ├── nvim-cmp.lua
│  │  ├── nvimtree.lua
│  │  ├── symbols-outline.lua
│  │  ├── telescope.lua
│  │  ├── terminal.lua
│  │  ├── treesitter.lua
│  │  ├── vim-illuminate.lua
│  │  └── vim-matchup.lua
│  ├── keybinds.lua
│  ├── plugins.lua
│  ├── settings.lua
│  └── theme.lua
|
├── init.lua
└── README.md
```
