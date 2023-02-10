local g = vim.g

g.mapleader = " "
g.maplocalleader = ","
g.editorconfig = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins", {
  lockfile = vim.fn.stdpath("data") .. "/lazy/lazy.json",

  defaults = {
    lazy = false,
    version = nil,
  },

  install = {
    missing = true,
    colorscheme = { "queit", "default" },
  },

  change_detection = {
    enable = true,
    notify = false,
  },

  checker = {
    enable = true,
    concurrency = nil,
    notify = false,
    frequency = 3600,
  },

  ui = {
    size = { width = 0.6, height = 0.7 },
    wrap = false,
    border = "rounded",
  },

  performance = {
    cache = { enabled = true },
    reset_packpath = true,
    rtp = {
      reset = true,
      path = {},
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        -- 'netrwPlugin',
        -- 'tarPlugin',
        "tohtml",
        "tutor",
        -- 'zipPlugin',
      },
    },
  },
})
