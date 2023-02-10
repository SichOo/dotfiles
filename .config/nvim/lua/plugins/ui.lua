return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    config = function()
      require('rose-pine').setup({
        disable_float_background = true,
        disable_background = true,
      })
      vim.cmd('colorscheme rose-pine')
    end
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup({
        transparent_background = true,
      })
    end
  },
}
