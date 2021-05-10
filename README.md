# Get started

```bash
mkdir -p pack/{util,nav,lang,coc,web}/start

git submodule add git@github.com:kien/ctrlp.vim.git pack/nav/start/ctrlp.vim
git submodule add git@github.com:scrooloose/nerdtree.git pack/nav/start/nerdtreej

git submodule add git@github.com:tpope/vim-surround.git pack/util/start/surround
git submodule add git@github.com:mattn/emmet-vim.git pack/util/start/emmet
git submodule add git@github.com:vim-airline/vim-airline.git pack/util/start/airline
git submodule add git@github.com:editorconfig/editorconfig-vim.git pack/util/start/editorconfig
git submodule add git@github.com:tpope/vim-fugitive.git pack/util/start/fugitive
git submodule add git@github.com:airblade/vim-gitgutter.git pack/util/start/gitgutter


git submodule add git@github.com:leafgarland/typescript-vim.git pack/web/start/typescript
git submodule add git@github.com:peitalin/vim-jsx-typescript.git pack/web/start/tsx

git submodule add git@gitlab.redox-os.org:redox-os/ion-vim.git pack/lang/start/ion
git submodule add git@github.com:ollykel/v-vim.git pack/lang/start/v
git submodule add git@github.com:cespare/vim-toml.git pack/lang/start/toml

git submodule add git@github.com:neoclide/coc.nvim.git pack/coc/start/coc
```

# Plugins update

```bash
git submodule init
git submodule update --remote
git submodule foreach git pull origin master
```

# Open file directory

`:e %:h` also `C-^` to [switch to prev buffer](https://stackoverflow.com/a/27692161/4039738)
