return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lspconfig")
    end,
  },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  {
    "glepnir/lspsaga.nvim",
    config = function()
      require("configs.lspsaga")
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("configs.null")
    end,
  },
  { "jay-babu/mason-null-ls.nvim" },
}
