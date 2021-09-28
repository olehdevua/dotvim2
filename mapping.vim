" `nore` mean NOT RECURSION .. for cases like `:inoremap ff fff`
inoremap jf <Esc>l

"nnoremap <C-q><C-q> :qall!
nnoremap <leader>qq :qall! <CR>
"nnoremap <C-b> :bp<CR>
nnoremap <C-b> :e#<CR> " behavior of C-^

vnoremap < <gv
vnoremap > >gv

nnoremap zl 33zl
nnoremap zh 33zh

" https://www.youtube.com/watch?v=hSHATqh8svM
"
" keep cursor at the same place
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
" copy-to-the-end
" nnoremap Y y$
" v- to not capture cr-nl (:help g_)
nnoremap Y yg_
" undo breackpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap ; ;<c-g>u
inoremap { {<c-g>u
inoremap [ [<c-g>u
inoremap " "<c-g>u
inoremap ' '<c-g>u


nnoremap <S-Left> :vertical resize -3<CR>
nnoremap <S-Right> :vertical resize +3<CR>

":echom expand("%:h") . '/' . expand("%:t") . ':' . line(".")    
"nnoremap <C-c><C-p> :echom expand("%:p") . ':' . line(".") <CR>
nnoremap <leader>cp :let @+=expand("%:p") . ':' . line(".") <CR>
" ^-- `+` is the name of register

" commented it because it prevent CTRL-I to work
" noremap <Tab> gt
" noremap <S-Tab> gT

inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap `` ``<Left>
inoremap <> <><Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap { {}<Left>

iabbrev cosnt const
iabbrev ocnst const

iabbrev ;r return
"inoremap ;r return
inoremap ;f function
inoremap ;in instanceof
inoremap ;i import
inoremap ;im implements
inoremap ;if interface
inoremap ;tp typeof 
inoremap ;tn throw new
inoremap ;q require
inoremap ;e export
inoremap ;en extends
inoremap ;aa async
inoremap ;a await
inoremap ;as assert
inoremap ;ud undefined
inoremap ;cs console
inoremap ;co constructor
inoremap ;c const
inoremap ;do document
inoremap ;de describe
inoremap ;df default
inoremap ;x expect(
inoremap ;A Array
inoremap ;P Promise

inoremap ;st static

inoremap ;s struct
inoremap ;I Iterator
inoremap ;O Option
inoremap ;R Result
inoremap ;pn println!("
