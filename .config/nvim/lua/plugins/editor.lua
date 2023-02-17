return {
  {
    "numToStr/Comment.nvim",
    config = function()
      require("sicho.comment")
    end,
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("sicho.autopairs")
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
    },
    config = function()
      require("sicho.nvim-tree")
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzy-native.nvim" },
      { "nvim-telescope/telescope-fzf-writer.nvim" },
    },
    config = function()
      require("sicho.telescope")
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-cmdline" },
      { "petertriho/cmp-git" },
      { "onsails/lspkind.nvim" },
    },
    config = function()
      require("sicho.cmp")
    end,
  },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
}
