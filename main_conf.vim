set encoding=utf-8 " default text encoding

colorscheme peachpuff
set background=dark
set showcmd
set autoread          " For auto update files
set smartcase         " for search
set number            " short form 'nu'
set showmatch         " highlight matching brace  (set sm)
set ignorecase        " ignore registre while searching (set ic)
set wildmenu

" https://habr.com/ru/post/64224/
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab         " transformation tab into spaces

set nohlsearch
set incsearch
set cursorline
" color like in tmux
hi CursorLine cterm=NONE ctermbg=235

set ruler           " Show row and column ruler information
set showtabline=2   " Show tab bar
set undolevels=256  " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

" by default `foldlevel` is 0, that is everything is
" folded, so you can to disable it initially
"
" set nofoldenable
set foldmethod=indent
set foldlevelstart=2 " fold everything below layer 1
hi Folded ctermbg=234

set mouse=c   " command-line mode (see :help mouse)

if has ("autocmd")
    filetype indent on
endif

set tags=tags;/,rusty-tags.vi

" Performance
set synmaxcol=256
set lazyredraw " to avoid scrolling problems

set list
set listchars=tab:·\ 

set scrolloff=7
set scrolljump=7

" change sp window   map <Tab> <C-W>W:cd %:p:h<CR>:<CR>

" session options
set sessionoptions=curdir,buffers,tabpages"
" Не выгружать буфер, когда переключаемся на другой. Это позволяет редактировать
" несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" set backupdir=~/.vim/backup//
" set directory=~/.vim/swap//
set nobackup
set nowritebackup
set noswapfile " disable creating swap files
"
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience. (AFAIU better to disable swap files)
set updatetime=200

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" give more space for displaying messages
set cmdheight=2
