HOME = os.getenv 'HOME'

vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'

-- basic settings
vim.opt.encoding = 'utf-8'
vim.opt.backspace = 'indent,eol,start' -- backspace works on every char in insert mode
vim.opt.completeopt = 'menuone,noselect'
vim.opt.history = 1000
vim.opt.dictionary = '/usr/share/dict/words'
vim.opt.startofline = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.mouse = 'a' -- Enable mouse mode
vim.opt.dip = 'vertical' -- Always use vertical diffs

-- Mapping waiting time
vim.opt.timeout = false
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 100
vim.opt.updatetime = 250 -- Decrease update time

-- Display
vim.opt.showmatch = true -- show matching brackets
vim.opt.scrolloff = 8 -- always show 3 rows from edge of the screen
vim.opt.synmaxcol = 300 -- stop syntax highlight after x lines for performance
vim.opt.laststatus = 2 -- always show status line

vim.opt.list = false -- do not display white characters
vim.opt.foldenable = false
vim.opt.foldlevel = 4 -- limit folding to 4 levels
vim.opt.foldmethod = 'syntax' -- use language syntax to generate folds
vim.opt.wrap = false --do not wrap lines even if very long
vim.opt.eol = false -- show if there's no eol char
vim.opt.showbreak = '↪' -- character to show when line is broken
vim.opt.inccommand = 'split' -- Preview substitutions live, as you type!
vim.opt.cmdheight = 2

-- Sidebar
vim.opt.relativenumber = true
vim.opt.number = true -- line number on the left
vim.opt.numberwidth = 3 -- always reserve 3 spaces for line number
vim.opt.signcolumn = 'yes' -- keep 1 column for coc.vim  check
vim.opt.modelines = 0
vim.opt.showcmd = true -- display command in bottom bar

-- Search
vim.opt.hlsearch = true -- better searching
vim.opt.incsearch = true -- starts searching as soon as typing, without enter needed
vim.opt.ignorecase = true -- ignore letter case when searching
vim.opt.smartcase = true -- case insentive unless capitals used in search

vim.opt.matchtime = 2 -- delay before showing matching paren
vim.opt.mps = vim.o.mps .. ',<:>'

-- White characters
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true -- Enable break indent
vim.opt.tabstop = 2 -- 1 tab = 2 spaces
vim.opt.shiftwidth = 2 -- indentation rule
vim.opt.formatoptions = 'qnj1' -- q  - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
vim.opt.expandtab = true -- expand tab to spaces

-- Backup files
vim.opt.backup = true -- use backup files
vim.opt.writebackup = false
vim.opt.swapfile = false -- do not use swap file
vim.opt.undofile = true -- Save undo history
vim.opt.undodir = HOME .. '/.vim/tmp/undo//' -- undo files
vim.opt.backupdir = HOME .. '/.vim/tmp/backup//' -- backups
vim.opt.directory = '/.vim/tmp/swap//' -- swap files

vim.cmd [[
  au FileType python                  set ts=4 sw=4
  au BufRead,BufNewFile *.md          set ft=mkd tw=80 syntax=markdown
  au BufRead,BufNewFile *.ppmd        set ft=mkd tw=80 syntax=markdown
  au BufRead,BufNewFile *.markdown    set ft=mkd tw=80 syntax=markdown
  au BufRead,BufNewFile *.slimbars    set syntax=slim
  au BufRead,BufNewFile *.vue         set syntax=vue
]]

-- Commands mode
vim.opt.wildmenu = true -- on TAB, complete options for system command
vim.opt.wildignore = 'deps,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc'

-- Only show cursorline in the current window and in normal mode.
vim.cmd [[
  augroup cline
      au!
      au WinLeave * set nocursorline
      au WinEnter * set cursorline
      au InsertEnter * set nocursorline
      au InsertLeave * set cursorline
  augroup END
]]

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Configure how new splits should be opened

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- vim: ts=2 sts=2 sw=2 et
