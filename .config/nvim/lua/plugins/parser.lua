return {
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      {'nvim-treesitter/nvim-treesitter-textobjects'},
      {'nvim-treesitter/playground'},
    },
    config = function()
      require('configs.treesitter')
    end
  },
}
