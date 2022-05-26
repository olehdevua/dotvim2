" set encoding=utf-8 " default text encoding
" 
" colorscheme darkplus
" set background=dark
" set showcmd
" set number            " short form 'nu'
" set autoread          " For auto update files
" set wildmenu
" set smartcase         " for search
" set showmatch         " highlight matching brace  (set sm)
" set ignorecase        " ignore registre while searching (set ic)
" set nohlsearch
" set incsearch
" 
" " hi Comment cterm=italic
" 
" set clipboard+=unnamedplus
" "set formatoptions-=cro " stop newline continution of comments (for now have no clue what does it means)
" 
" set pumheight=13 " height of popup menu
" 
" " https://habr.com/ru/post/64224/
" set autoindent
" set smartindent
" set smarttab
" set shiftwidth=2
" set softtabstop=2
" set tabstop=2
" set expandtab         " transformation tab into spaces
" set nowrap
" 
" set cursorline
" " color like in tmux
" hi CursorLine cterm=NONE ctermbg=235
" 
" " highlight <word> when you do ':%s/<word>/..'
" if has("nvim")
"   set inccommand=nosplit
" endif
" 
" set ruler           " Show row and column ruler information
" set showtabline=2   " Show tab bar
" set undolevels=256  " Number of undo levels
" set backspace=indent,eol,start  " Backspace behaviour
" 
" " by default `foldlevel` is 0, that is everything is
" " folded, so you can to disable it initially
" "
" " set nofoldenable
" set foldmethod=indent
" set foldlevelstart=1 " fold everything below layer 1
" hi Folded ctermbg=234
" 
" set mouse=a
" 
" if has ("autocmd")
"     filetype indent on
" endif
" 
" set tags=tags;/,rusty-tags.vi
" 
" " Performance
" set synmaxcol=512
" set lazyredraw " to avoid scrolling problems
" 
" set list
" set listchars=tab:·\ 
" 
" set scrolloff=17
" set scrolljump=17
" 
" " change sp window   map <Tab> <C-W>W:cd %:p:h<CR>:<CR>
" 
" " session options
" set sessionoptions=curdir,buffers,tabpages
" " Не выгружать буфер, когда переключаемся на другой. Это позволяет редактировать
" " несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" " когда переключаешься между ними
" set hidden
" 
" " set backupdir=~/.vim/backup//
" " set directory=~/.vim/swap//
" set nobackup
" set nowritebackup
" set noswapfile " disable creating swap files
" "
" " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" " delays and poor user experience. (AFAIU better to disable swap files)
" set updatetime=200
" set timeoutlen=500 " didnt completely understood its meaning
" 
" " set signcolumn=auto:2 " or number ?
" set signcolumn=yes:2 " or number ?
" 
" " give more space for displaying messages
" set cmdheight=2
" 
" " single status line for all windows
" set laststatus=3
