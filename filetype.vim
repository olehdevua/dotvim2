" au == autocmd

au BufRead,BufNewFile /etc/nginx/* set ft=nginx
au BufRead,BufNewFile nginx.conf set ft=nginx
au BufRead,BufNewFile *.s set filetype=gas
au BufRead,BufNewFile *.asm set filetype=fasm
au BufRead,BufNewFile *.ASM set filetype=fasm
au BufRead,BufNewFile *.kubeconfig set filetype=yaml

au Filetype gitcommit setlocal spell textwidth=72

hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey

" https://vi.stackexchange.com/questions/9455/why-should-i-use-augroup
