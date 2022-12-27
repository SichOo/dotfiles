-- Leader using space
vim.g.mapleader = ' '

-- Fast to NomalMode
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('i', 'kj', '<esc>')

-- File Manager
vim.keymap.set('n', '<Leader>fm', vim.cmd.Ex)

-- Copy to Clipboard
vim.keymap.set({'n', 'v'}, '<Leader>y', [["+y"]])
vim.keymap.set('n', '<Leader>Y', [["+Y"]])
