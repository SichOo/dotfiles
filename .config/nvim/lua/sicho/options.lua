local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.cursorline = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.backup = false
opt.swapfile = false
opt.undodir = vim.fn.stdpath('data') .. '/undodir'
opt.undofile = true

opt.updatetime = 1000
opt.splitright = true
opt.splitbelow = true
opt.showcmd = false

opt.clipboard = 'unnamedplus'
