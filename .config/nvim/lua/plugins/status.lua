return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
    },
    config = function()
      require("sicho.statusline")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
    },
    config = function()
      require("sicho.bufferline")
    end,
  },

  -- Misc
  {
    "tiagovla/scope.nvim",
    config = function()
      require("scope").setup()
    end,
  },
  { "j-hui/fidget.nvim" },
}
