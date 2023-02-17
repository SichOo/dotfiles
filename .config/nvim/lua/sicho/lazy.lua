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
  lockfile = vim.fn.stdpath("data") .. "/lazy/lock.json",
  change_detection = {
    enabled = true,
    notify = false,
  },
  ui = {
    border = "rounded",
    size = { width = 0.86, height = 0.78 },
  },
})
