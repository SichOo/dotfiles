require('user.settings')
require('user.keymaps')

local augroup = vim.api.nvim_create_augroup
local UserGroup = augroup('User', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
  require('plenary.reload').reload_module(name)
end

autocmd('TextYankPost', {
  group = yank_group,
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 60,
    })
  end,
})

autocmd({'BufWritePre'}, {
  group = UserGroup,
  pattern = '*',
  command = [[%s/\s\+$//e]],
})

vim.g.netrw_browser_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
