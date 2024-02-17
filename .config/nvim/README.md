# Neovim Config

<a href="https://dotfyle.com/Vallen217/dotfiles-config-nvim"><img src="https://dotfyle.com/Vallen217/dotfiles-config-nvim/badges/plugins?style=flat" /></a>
<a href="https://dotfyle.com/Vallen217/dotfiles-config-nvim"><img src="https://dotfyle.com/Vallen217/dotfiles-config-nvim/badges/leaderkey?style=flat" /></a>
<a href="https://dotfyle.com/Vallen217/dotfiles-config-nvim"><img src="https://dotfyle.com/Vallen217/dotfiles-config-nvim/badges/plugin-manager?style=flat" /></a>

![Alt test](https://github.com/Vallen217/dotfiles/blob/main/screenshots/neovim_1.png?raw=true)

![Alt test](https://github.com/Vallen217/dotfiles/blob/main/screenshots/neovim_2.png?raw=true)

![Alt test](https://github.com/Vallen217/dotfiles/blob/main/screenshots/neovim_3.png?raw=true)

## Install Instructions

 > Install requires Neovim 0.9+. Always review the code before installing a configuration.

Clone the repository and install the plugins:

```sh
git clone git@github.com:Vallen217/dotfiles ~/.config/Vallen217/dotfiles
NVIM_APPNAME=Vallen217/dotfiles/.config/nvim nvim --headless +"PackerSync" +qa
```

Open Neovim with this config:

```sh
NVIM_APPNAME=Vallen217/dotfiles/.config/nvim nvim
```

## Plugins

### bars-and-lines

+ [lukas-reineke/virt-column.nvim](https://dotfyle.com/plugins/lukas-reineke/virt-column.nvim)
### colorscheme

+ [EdenEast/nightfox.nvim](https://dotfyle.com/plugins/EdenEast/nightfox.nvim)
### comment

+ [danymat/neogen](https://dotfyle.com/plugins/danymat/neogen)
+ [numToStr/Comment.nvim](https://dotfyle.com/plugins/numToStr/Comment.nvim)
+ [folke/todo-comments.nvim](https://dotfyle.com/plugins/folke/todo-comments.nvim)
### completion

+ [hrsh7th/nvim-cmp](https://dotfyle.com/plugins/hrsh7th/nvim-cmp)
### cursorline

+ [yamatsum/nvim-cursorline](https://dotfyle.com/plugins/yamatsum/nvim-cursorline)
### debugging

+ [mfussenegger/nvim-dap](https://dotfyle.com/plugins/mfussenegger/nvim-dap)
### diagnostics

+ [folke/lsp-colors.nvim](https://dotfyle.com/plugins/folke/lsp-colors.nvim)
+ [folke/trouble.nvim](https://dotfyle.com/plugins/folke/trouble.nvim)
### editing-support

+ [ZhiyuanLck/smart-pairs](https://dotfyle.com/plugins/ZhiyuanLck/smart-pairs)
+ [nvim-treesitter/nvim-treesitter-context](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter-context)
### file-explorer

+ [kelly-lin/ranger.nvim](https://dotfyle.com/plugins/kelly-lin/ranger.nvim)
### formatting

+ [MunifTanjim/prettier.nvim](https://dotfyle.com/plugins/MunifTanjim/prettier.nvim)
+ [elentok/format-on-save.nvim](https://dotfyle.com/plugins/elentok/format-on-save.nvim)
### fuzzy-finder

+ [nvim-telescope/telescope.nvim](https://dotfyle.com/plugins/nvim-telescope/telescope.nvim)
### git

+ [kdheepak/lazygit.nvim](https://dotfyle.com/plugins/kdheepak/lazygit.nvim)
+ [lewis6991/gitsigns.nvim](https://dotfyle.com/plugins/lewis6991/gitsigns.nvim)
### icon

+ [kyazdani42/nvim-web-devicons](https://dotfyle.com/plugins/kyazdani42/nvim-web-devicons)
+ [yamatsum/nvim-nonicons](https://dotfyle.com/plugins/yamatsum/nvim-nonicons)
### indent

+ [lukas-reineke/indent-blankline.nvim](https://dotfyle.com/plugins/lukas-reineke/indent-blankline.nvim)
### keybinding

+ [folke/which-key.nvim](https://dotfyle.com/plugins/folke/which-key.nvim)
### lsp

+ [smjonas/inc-rename.nvim](https://dotfyle.com/plugins/smjonas/inc-rename.nvim)
+ [Wansmer/symbol-usage.nvim](https://dotfyle.com/plugins/Wansmer/symbol-usage.nvim)
+ [onsails/lspkind.nvim](https://dotfyle.com/plugins/onsails/lspkind.nvim)
+ [neovim/nvim-lspconfig](https://dotfyle.com/plugins/neovim/nvim-lspconfig)
### lsp-installer

+ [williamboman/mason.nvim](https://dotfyle.com/plugins/williamboman/mason.nvim)
### markdown-and-latex

+ [iamcco/markdown-preview.nvim](https://dotfyle.com/plugins/iamcco/markdown-preview.nvim)
### motion

+ [folke/flash.nvim](https://dotfyle.com/plugins/folke/flash.nvim)
### nvim-dev

+ [nvim-lua/plenary.nvim](https://dotfyle.com/plugins/nvim-lua/plenary.nvim)
### plugin-manager

+ [wbthomason/packer.nvim](https://dotfyle.com/plugins/wbthomason/packer.nvim)
### snippet

+ [L3MON4D3/LuaSnip](https://dotfyle.com/plugins/L3MON4D3/LuaSnip)
### startup

+ [goolord/alpha-nvim](https://dotfyle.com/plugins/goolord/alpha-nvim)
### statusline

+ [nvim-lualine/lualine.nvim](https://dotfyle.com/plugins/nvim-lualine/lualine.nvim)
### syntax

+ [nvim-treesitter/nvim-treesitter-textobjects](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter-textobjects)
+ [nvim-treesitter/nvim-treesitter](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter)
### tabline

+ [romgrk/barbar.nvim](https://dotfyle.com/plugins/romgrk/barbar.nvim)
### utility

+ [rcarriga/nvim-notify](https://dotfyle.com/plugins/rcarriga/nvim-notify)
+ [kevinhwang91/nvim-ufo](https://dotfyle.com/plugins/kevinhwang91/nvim-ufo)
## Language Servers

+ awk_ls
+ bashls
+ clangd
+ cssls
+ dockerls
+ grammarly
+ graphql
+ html
+ jdtls
+ jsonls
+ lemminx
+ lua_ls
+ luau_lsp
+ pyright
+ rust_analyzer
+ solargraph
+ sqlls
+ taplo
+ vimls
+ yamlls

  
 This readme was generated by [Dotfyle](https://dotfyle.com)
