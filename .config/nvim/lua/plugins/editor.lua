return {
  {
    "windwp/nvim-autopairs",
    config = function()
      require("configs.autopairs")
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("configs.iblankline")
    end,
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("configs.comment")
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      { "MunifTanjim/nui.nvim" },
    },
    config = function()
      require("configs.neotree")
    end,
  },
}
