# 1-get-started

```bash
mkdir -p pack/{util,nav,lang,web,lsp}/{start,opt}

git submodule add git@github.com:tpope/vim-surround.git pack/util/start/surround
git submodule add git@github.com:mattn/emmet-vim.git pack/util/start/emmet
git submodule add git@github.com:vim-airline/vim-airline.git pack/util/start/airline
git submodule add git@github.com:editorconfig/editorconfig-vim.git pack/util/start/editorconfig
git submodule add git@github.com:tpope/vim-fugitive.git pack/util/start/fugitive
git submodule add git@github.com:airblade/vim-gitgutter.git pack/util/start/gitgutter

git submodule add git@gitlab.redox-os.org:redox-os/ion-vim.git pack/lang/start/ion
git submodule add git@github.com:ellisonleao/glow.nvim.git pack/lang/start/glow

git submodule add git@github.comLunarVim/Colorschemes.git pack/util/start/colorschemes

##### lsp + treesitter

git submodule add git@github.com:neovim/nvim-lspconfig.git pack/lsp/start/nvim-lspconfig

git submodule add git@github.com:hrsh7th/cmp-nvim-lsp pack/lsp/start/cmp-nvim-lsp
git submodule add git@github.com:hrsh7th/cmp-buffer pack/lsp/start/cmp-buffer
git submodule add git@github.com:hrsh7th/cmp-path pack/lsp/start/cmp-path
git submodule add git@github.com:hrsh7th/cmp-cmdline pack/lsp/start/cmp-cmdline
git submodule add git@github.com:hrsh7th/nvim-cmp pack/lsp/start/nvim-cmp

git submodule add git@github.com:hrsh7th/vim-vsnip.git pack/lsp/start/vim-vsnip
git submodule add git@github.com:hrsh7th/cmp-vsnip.git pack/lsp/start/cmp-vsnip

git submodule add git@github.com:nvim-treesitter/nvim-treesitter.git pack/lsp/start/nvim-treesitter

git submodule add git@github.com:mfussenegger/nvim-dap.git pack/lsp/start/nvim-dap
 
git submodule add git@github.com:jakewvincent/mkdnflow.nvim.git pack/lsp/start/mkdnflow.nvim

###### nav

git submodule add git@github.com:kien/ctrlp.vim.git pack/nav/start/ctrlp.vim
git submodule add git@github.com:scrooloose/nerdtree.git pack/nav/start/nerdtreej

git submodule add git@github.com:nvim-lua/plenary.nvim.git pack/util/start/plenary.nvim
git submodule add git@github.com:kyazdani42/nvim-web-devicons.git pack/util/start/nvim-web-devicons

git submodule add git@github.com:nvim-telescope/telescope.nvim.git  pack/nav/start/telescope.nvim
git submodule add git@github.com:nvim-telescope/telescope-symbols.nvim.git pack/nav/start/telescope-symbols
```

## 1-2-plugins-update

```bash
git submodule init
git submodule update --remote
git submodule foreach git pull origin master
```

For the future:

git@github.com:nvim-lualine/lualine.nvim.git
https://github.com/akinsho/bufferline.nvim
https://github.com/numToStr/Comment.nvim
https://github.com/L3MON4D3/LuaSnip # maybe
https://github.com/lewis6991/gitsigns.nvim
https://github.com/kyazdani42/nvim-tree.lua

https://github.com/NvChad/NvChad # full-fledged setup

-----------------------------------------------------------

# 3-tricks

## 3-1-open-file-directory

`:e %:h` also `C-^` to [switch to prev buffer](https://stackoverflow.com/a/27692161/4039738)


## 3-2-productive-vim-shortcuts-stover

from [what-is-your-most-productive-shortcut-with-vim](https://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim)

`:.,$j` - from current line (`.`) to last line (`$`) join all lines

`:.,+21g/foo/d` - delete any lines containing the string "foo" from the current
  one through the next 21 lines

`:.,$v/bar/d` - from here to the end of the file, delete any lines
  which DON'T contain the string "bar"
