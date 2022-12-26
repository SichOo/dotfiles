vim.g.mapleader = ' '

-- Fast Escape
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('i', 'kj', '<esc>')

-- Disabled ArrowKeybind
vim.keymap.set( {'n', 'i', 'v'}, '<Top>', '<nop>')
vim.keymap.set( {'n', 'i', 'v'}, '<Bottom>', '<nop>')
vim.keymap.set( {'n', 'i', 'v'}, '<Right>', '<nop>')
vim.keymap.set( {'n', 'i', 'v'}, '<Left>', '<nop>')

-- File Manager
vim.keymap.set('n', '<Leader>fm', vim.cmd.Ex)

-- Copy to Clipboard
vim.keymap.set({'n', 'v'}, '<Leader>y', [["+y"]])
vim.keymap.set('n', '<Leader>Y', [["+Y"]])
