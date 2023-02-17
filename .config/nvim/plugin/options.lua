local opt = vim.opt

opt.mouse = "a"
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.colorcolumn = "80"

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smarttab = true

opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.updatetime = 550

opt.backup = false
opt.swapfile = false
opt.undodir = vim.fn.stdpath("data") .. "/undodir"
opt.undofile = false

opt.splitright = true
opt.splitbelow = true

opt.clipboard = "unnamedplus"

opt.pumheight = 7
opt.showcmd = false
