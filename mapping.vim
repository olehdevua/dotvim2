" `nore` mean NOT RECURSION .. for cases like `:inoremap ff fff`
inoremap jf <Esc>l

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

inoremap ;r return
inoremap ;f function
inoremap ;in instanceof
inoremap ;i import
inoremap ;im implements
inoremap ;if interface
inoremap ;tp typeof 
inoremap ;tn throw new 
inoremap ;tnt throw new TypeError(
inoremap ;tne throw new Error(
inoremap ;q require
inoremap ;pr prototype
inoremap ;pc public
inoremap ;pv private
inoremap ;pd protected
inoremap ;e export
inoremap ;en extends
inoremap ;aa async
inoremap ;a await
inoremap ;ar arguments
inoremap ;as assert
inoremap ;ud undefined
inoremap ;cs console
inoremap ;co constructor
inoremap ;c const
inoremap ;do document
inoremap ;de describe
inoremap ;df default
inoremap ;x expect(
inoremap ;E Error
inoremap ;A Array
inoremap ;O Object
inoremap ;S String
inoremap ;P Promise

inoremap ;st static

inoremap ;s struct
inoremap ;u unsafe
inoremap ;I Iterator
inoremap ;O Option
inoremap ;R Result
inoremap ;mr macro_rules! 
inoremap ;pn println!(""
