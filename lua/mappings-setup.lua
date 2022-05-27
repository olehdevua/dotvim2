-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

--  `nore` mean NOT RECURSION .. for cases like `:inoremap ff fff`
-- inoremap jf <Esc>l
vim.api.nvim_set_keymap('i', 'jf', '<Esc>l', { noremap = true })

-- nnoremap <Space> <Down>
vim.api.nvim_set_keymap('n', '<Space>', '<Down>', { noremap = true })

-- nnoremap <C-q><C-q> :qall!
-- nnoremap <leader>qa :qall! <CR>
-- nnoremap <leader>qq :q! <CR>
vim.api.nvim_set_keymap('n', '<leader>qa', ':qall!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>qq', ':q!<CR>', { noremap = true })
-- nnoremap <C-b> :bp<CR>
-- nnoremap <C-b> :e#<CR> " behavior of C-^
vim.api.nvim_set_keymap('n', '<C-b>', ':e#<CR>', { noremap = true })

-- vnoremap < <gv
-- vnoremap > >gv
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })

-- nnoremap zl 33zl
-- nnoremap zh 33zh
vim.api.nvim_set_keymap('n', 'zl', '33zl', { noremap = true })
vim.api.nvim_set_keymap('n', 'zh', '33zh', { noremap = true })

--  https://www.youtube.com/watch?v=hSHATqh8svM
-- 
--  keep cursor at the same place
-- nnoremap n nzzzv
-- nnoremap N Nzzzv
-- nnoremap J mzJ`z
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true })
vim.api.nvim_set_keymap('n', 'J', 'mzJ`z', { noremap = true })

--  copy-to-the-end
--  nnoremap Y y$
--  v- to not capture cr-nl (:help g_)
--nnoremap Y yg_
vim.api.nvim_set_keymap('n', 'Y', 'yg_', { noremap = true })

--  undo breackpoints
--inoremap , ,<c-g>u
--inoremap . .<c-g>u
--inoremap ! !<c-g>u
--inoremap ? ?<c-g>u
--inoremap ; ;<c-g>u
--inoremap { {<c-g>u
--inoremap [ [<c-g>u
--inoremap " "<c-g>u
--inoremap ' '<c-g>u
vim.api.nvim_set_keymap('i', ',',  ',<c-g>u', { noremap = true })
vim.api.nvim_set_keymap('i', '.',  '.<c-g>u', { noremap = true })
vim.api.nvim_set_keymap('i', '!',  '!<c-g>u', { noremap = true })
vim.api.nvim_set_keymap('i', '?',  '?<c-g>u', { noremap = true })
vim.api.nvim_set_keymap('i', ';',  ';<c-g>u', { noremap = true })
vim.api.nvim_set_keymap('i', '{',  '{<c-g>u', { noremap = true })
vim.api.nvim_set_keymap('i', '[',  '[<c-g>u', { noremap = true })
vim.api.nvim_set_keymap('i', '"',  '"<c-g>u', { noremap = true })
vim.api.nvim_set_keymap('i', '\'', '\'<c-g>u', { noremap = true })

--nnoremap <S-Left> :vertical resize -3<CR>
--nnoremap <S-Right> :vertical resize +3<CR>
vim.api.nvim_set_keymap('n', '<S-Left>',  ':vertical resize -3', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Right>', ':vertical resize +3', { noremap = true })

-- :echom expand("%:h") . '/' . expand("%:t") . ':' . line(".")    
-- nnoremap <C-c><C-p> :echom expand("%:p") . ':' . line(".") <CR>
-- 
--nnoremap <leader>cp :let @+=expand("%:p") . ':' . line(".") <CR>
vim.api.nvim_set_keymap('n', '<leader>cp', ':let @+=expand("%:p") . ":" . line(".")', { noremap = true })
--  ^-- `+` is the name of register

--  commented it because it prevent CTRL-I to work
--  noremap <Tab> gt
--  noremap <S-Tab> gT

--inoremap "" ""<Left>
--inoremap '' ''<Left>
--inoremap `` ``<Left>
--inoremap <> <><Left>
--inoremap [ []<Left>
--inoremap ( ()<Left>
--inoremap { {}<Left>
vim.api.nvim_set_keymap('i', '""', '""<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', "''", "''<Left>", { noremap = true })
vim.api.nvim_set_keymap('i', '``', '``<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '<>',  '<><Left>',  { noremap = true })
vim.api.nvim_set_keymap('i', '[',  '[]<Left>',  { noremap = true })
vim.api.nvim_set_keymap('i', '(',  '()<Left>',  { noremap = true })
vim.api.nvim_set_keymap('i', '{',  '{}<Left>',  { noremap = true })

-- iabbrev cosnt const
-- iabbrev ocnst const
-- 
-- iabbrev ;r return
-- -- inoremap ;r return
-- inoremap ;f function
-- inoremap ;in instanceof
-- inoremap ;i import
-- inoremap ;if interface
-- inoremap ;tn throw new
-- inoremap ;q require
-- inoremap ;e export
-- inoremap ;a await
-- inoremap ;ud undefined
-- inoremap ;cs console
-- inoremap ;co constructor
-- inoremap ;c const
-- inoremap ;df default
-- inoremap ;x expect(
-- inoremap ;P Promise
-- 
-- inoremap ;st static
-- 
-- inoremap ;s struct
-- inoremap ;I Iterator
-- inoremap ;O Option
-- inoremap ;R Result
-- inoremap ;pn println!("
