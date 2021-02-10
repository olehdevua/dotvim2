"
" ============ ctrlp =======================================
"

"let g:ctrlp_by_filename = 0
"let g:ctrlp_regexp = 1
let g:ctrlp_match_window = 'min:1,max:20'
" let g:ctrlp_custom_ignore = {
"             \ 'dir': 'target\',
"             \ 'file': '\v\.(so|o|png|db|jpg)$'
"             \ }
let g:ctrlp_root_markers=['.git', '.editorconfig', 'docker-compose.*', 'package.json']
set wildignore+=*/target/**
set wildignore+=*/node_modules/**
set wildignore+=*/dist/**
set wildignore+=*/build/**
set wildignore+=*/public/**
" from some blog
"let g:ctrlp_match_window = 'bottom,order:ttb'
" let g:ctrlp_switch_buffer = 0  "  always open files in new buffers

"
" ============ slime =======================================
"

let g:slime_target = "tmux"

"
" ============ nerdtree ====================================
"

nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<cr>

let NERDTreeWinSize = 38
let NERDTreeDirArrows=1 " show arrow for dirs
let NERDTreeMinimalUI=1
let NERDTreeChDirMode=2
let NERDTreeShowHidden=1
let NERDTreeSortOrder=[ '^\..*/$', '/$', '^\..*', '^_.*', '\.vim$', '\.js$', '\.ts$', '\.rs$', '\.v$', '\.h$', '\.c$', '\.s$', '\.ll$', '\.sh$', '\.txt$', '*', '\.html$', '\.json$', '\.md$', 'README.*', '.*\.lock$', '^.*file']
let NERDTreeHijackNetrw=0
let NERDTreeIgnore = ['\.class$', '\.png$', '\.db$', '\.jpg$', '\.o$', '\.so$', '\.cmi', '\.cmo', '\.cmx', 'node_modules']

"
" ============ slime =======================================
"

let g:user_emmet_leader_key='<C-a>'
