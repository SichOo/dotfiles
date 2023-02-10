local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.colorcolumn = "80"
opt.signcolumn = "yes"

opt.backup = false
opt.swapfile = false
opt.undodir = vim.fn.stdpath("data") .. "/undodir"
opt.undofile = true

opt.updatetime = 1000

opt.clipboard:append("unnamedplus")

-- opt.tabstop = 2
-- opt.softtabstop = 2
-- opt.shiftwidth = 2
-- opt.expandtab = true

opt.pumblend = 0
opt.pumwidth = 7
opt.pumheight = 7
opt.completeopt = { "menu", "menuone", "noselect" }

opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
