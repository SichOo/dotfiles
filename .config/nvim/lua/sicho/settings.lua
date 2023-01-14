vim.opt.guicursor = ''
vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.colorcolumn = '80'
vim.opt.signcolumn = 'yes'

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"
vim.opt.undofile = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.smartcase = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.clipboard:append('unnamedplus')

