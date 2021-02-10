"
" ============ netrw =======================================
"
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" " 1 - open in a new horizontal split
" " 2 - open in a new vertical split
" " 3 - open in a new tab
" " 4 - open in previous window
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 30
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

let g:netrw_banner = 0 " 0 - default
let g:netrw_liststyle = 0
let g:netrw_browse_split = 0
" let g:netrw_sort_by='exten'
let g:netrw_sort_by='name' " name - default, 'exten' isnt used because of 'g:netrw_sort_sequence'
let g:netrw_sort_sequence='[\/]$,\.ts$,\.js$,\.rs$,\.sh$,*,\.json$'
