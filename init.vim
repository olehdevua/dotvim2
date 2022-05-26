set nocompatible " incompatibility setting with vi
syntax on

let mapleader=","

" include 
source ~/.config/nvim/filetype.vim
source ~/.config/nvim/netrw.vim
source ~/.config/nvim/mapping.vim
source ~/.config/nvim/plugs.vim
"source ~/.config/nvim/for-coc.vim
source ~/.config/nvim/main_conf.vim

lua << EOF
require("misc-setup")
require("language-setup")
EOF
