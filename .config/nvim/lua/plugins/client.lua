return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup({
        disable_float_background = true,
        disable_background = true,
      })
      vim.cmd('colorscheme rose-pine')
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup({
        options = {
          themes = 'rose-pine',
        }
      })
    end
  }
}
