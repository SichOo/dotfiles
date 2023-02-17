require("nvim-treesitter.configs").setup({
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
  },
  highlight = {
    enable = true,
    disable = nil,
  },
  ensure_installed = {
    "css",
    "html",
    "javascript",
    "markdown",
    "markdown_inline",
    "typescript",
    "tsx",
  },
})
