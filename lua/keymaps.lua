-- [[ Helpers ]]
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- Lazy Ex Commands
nmap(';', ':')

-- Quit like a winner
nmap('<leader>q', ':q<CR>')

-- Easy buffer navigation
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')

-- Begining & End of line in Normal mode
nmap('H', '^')
nmap('L', 'g_')

-- Reselect visual block after indent/outdent
vmap('<', '<gv')
vmap('>', '>gv')

-- Easy window split; C-w v -> vv, C-w - s -> ss
nmap('vv', '<C-w>v')
nmap('ss', '<C-w>s')
vim.o.splitbelow = true -- when splitting horizontally, move coursor to lower pane
vim.o.splitright = true -- when splitting vertically, mnove coursor to right pane

-- Terminal
-- ESC to go to normal mode in terminal
tmap('<C-s>', '<C-\\><C-n>')
tmap('<Esc><Esc>', '<C-\\><C-n>')

-- Switch back to last file
nmap('<leader><leader>', '<C-^>') -- not working?

-- Exit insert mode center stage (a.k.a LET ME OUT!)
imap('fj', '<Esc>')
imap('jf', '<Esc>')
imap('jj', '<Esc>')

-- Save on [enter]
vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*',
  command = 'w',
})
nmap('<Enter>', ':w<CR>') -- don't move

-- Open terminal
nmap('<C-`>', ':8sp term://zsh<CR>')

-- Vim-vinegar-like parent directory navigation
-- nmap('-', ':Oil<CR>')
