-- local options = {
--   backup = false,                          -- creates a backup file
--   clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
--   completeopt = { "menuone", "noselect" }, -- mostly just for cmp
--   conceallevel = 0,                        -- so that `` is visible in markdown files
--   fileencoding = "utf-8",                  -- the encoding written to a file
--   hlsearch = true,                         -- highlight all matches on previous search pattern
--   ignorecase = true,                       -- ignore case in search patterns
--   mouse = "a",                             -- allow the mouse to be used in neovim
--   pumheight = 10,                          -- pop up menu height
--   showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
--   undofile = true,                         -- enable persistent undo
--   updatetime = 300,                        
--   writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
--   expandtab = true,                        -- convert tabs to spaces
--   shiftwidth = 2,                          -- the number of spaces inserted for each indentation
--   tabstop = 2,                             -- insert 2 spaces for a tab
--   cursorline = true,                       -- highlight the current line
--   number = true,                           -- set numbered lines
--   relativenumber = false,                  -- set relative numbered lines
--   numberwidth = 4,                         -- set number column width to 2 {default 4}
--   signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
--   wrap = false,                            -- display lines as one long line
--   scrolloff = 8,                           -- is one of my fav
--   sidescrolloff = 8,
--   guifont = "monospace:h17",               -- the font used in graphical neovim applications
-- }
-- 
-- vim.opt.shortmess:append "c"
-- 
-- for k, v in pairs(options) do
--   vim.opt[k] = v
-- end
-- 
-- vim.cmd "set whichwrap+=<,>,[,],h,l"
-- vim.cmd [[set iskeyword+=-]]
-- vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

-------------------------------------------------------------------
-- based on origin "<root>.main_conf.vim"

-- default text encoding
vim.o.encoding = 'utf-8'

vim.cmd 'colorscheme darkplus'
-- vim.api.exec

vim.o.background = dark
vim.o.showcmd = true
vim.o.number = true           -- short form 'nu'
vim.o.autoread = true         -- For auto update files
vim.o.wildmenu = true
vim.o.smartcase = true        -- smart-case search
vim.o.showmatch = true        -- highlight matching brace  (set sm)
vim.o.ignorecase = true       -- ignore registre while searching (set ic)
vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.termguicolors = true    -- set term gui colors (most terminals support this)

vim.o.splitbelow = true       -- force all horizontal splits to go below current window
vim.o.splitright = true       -- force all vertical splits to go to the right of current window

vim.cmd 'hi Comment cterm=italic'
-- " hi Comment cterm=italic
-- 
-- set clipboard+=unnamedplus
-- "set formatoptions-=cro " stop newline continution of comments (for now have no clue what does it means)
vim.o.clipboard = 'unnamedplus'

vim.o.pumheight = 13 -- height of popup menu

-- " https://habr.com/ru/post/64224/
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.expandtab = true         -- transformation tab into spaces
vim.o.wrap = false

vim.ocursorline = true
-- " color like in tmux
-- hi CursorLine cterm=NONE ctermbg=235

-- " highlight <word> when you do ':%s/<word>/..'
-- if has("nvim")
--   set inccommand=nosplit
-- endif
vim.o.inccommand = 'nosplit'

vim.o.ruler = true                   -- Show row and column ruler information
vim.o.showtabline = 2                -- Show tab bar
vim.o.undolevels = 256               -- Number of undo levels
-- Backspace behaviour
vim.obackspace='indent,eol,start'

-- by default `foldlevel` is 0, that is everything is
-- folded, so you can to disable it initially
--
-- set nofoldenable
vim.o.foldmethod = 'indent'
-- fold everything below layer 1
vim.o.foldlevelstart = 1
--hi Folded ctermbg=234

vim.o.mouse = 'a'

-- if has ("autocmd")
--     filetype indent on
-- endif

-- set tags=tags;/,rusty-tags.vi

-- Performance
vim.o.synmaxcol = 512
vim.o.lazyredraw = true -- to avoid scrolling problems

vim.o.list = true
-- vim.o.listchars = "tab:·\ "

vim.o.scrolloff=17
vim.o.scrolljump=17

--" change sp window   map <Tab> <C-W>W:cd %:p:h<CR>:<CR>

--" session options
vim.o.sessionoptions = 'curdir,buffers,tabpages'
--" Не выгружать буфер, когда переключаемся на другой. Это позволяет редактировать
--" несколько файлов в один и тот же момент без необходимости сохранения каждый раз
--" когда переключаешься между ними
vim.o.hidden = true

--" set backupdir=~/.vim/backup//
--" set directory=~/.vim/swap//
vim.o.backup = false
vim.o.writebackup = false
-- disable creating swap files
vim.o.swapfile = false
--"
-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience. (AFAIU better to disable swap files).
-- btw: gives faster completion (4000ms default)
vim.o.updatetime = 200
-- time to wait for a mapped sequence to complete (in milliseconds)
-- didnt completely understood its meaning
vim.o.timeoutlen = 500

-- " set signcolumn=auto:2 " or number ?
-- v-- or number ?
vim.o.signcolumn = 'yes:2'

--" give more space for displaying messages
vim.o.cmdheight = 2

--" single status line for all windows
vim.o.laststatus = 3
