return {
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('configs.statusline')
    end
  },
  {
    'akinsho/bufferline.nvim',
    config = function()
      require('configs.bufferline')
    end
  },
}
