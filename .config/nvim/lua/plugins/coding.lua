return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "nvim-treesitter/playground" },
      { "nvim-treesitter/nvim-treesitter-textobjects" },
      { "JoosepAlviste/nvim-ts-context-commentstring" },
    },
    config = function()
      require("sicho.treesitter")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
    },
    config = function()
      require("sicho.mason-lsp")
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
      { "jay-babu/mason-null-ls.nvim" },
    },
    config = function()
      require("sicho.mason-nl")
    end,
  },
  {
    "glepnir/lspsaga.nvim",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
    },
    config = function()
      require("sicho.lspsaga")
    end,
  },
}
