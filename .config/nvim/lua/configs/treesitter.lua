local tsconfig = require('nvim-treesitter.configs')
tsconfig.setup({
  automatic_installation = true,
  ensure_installed = {
    'css',
    'html',
    'javascript',
    'typescript',
    'tsx',
  },
})
