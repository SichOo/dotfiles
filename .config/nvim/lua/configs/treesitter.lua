if not pcall(require, 'nvim-treesitter') then
  return
end

local _ = require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'css',
    'html',
    'javascript',
    'markdown',
    'markdown_inline',
    'typescript',
    'tsx',
    'lua',
    'vim',
  },

  sync_install = true,
  auto_install = false,
  ignore_install = {},

  highlight = {
    enable = true,
  },

  indent = {
    enable = true,
  },

  incremental_selection = {
    enable = true
  },

})
