return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      {'nvim-telescope/telescope-fzy-native.nvim'},
      {'nvim-telescope/telescope-fzf-writer.nvim'},
      {'nvim-telescope/telescope-file-browser.nvim'},
      {'nvim-telescope/telescope-ui-select.nvim'},
    },
    config = function()
      require('configs.telescope')
    end
  },
}
