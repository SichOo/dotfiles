local lspconfig = vim.F.npcall(require, 'lspconfig')
if not lspconfig then
  return
end

require('lspconfig.ui.windows').default_options.border = 'rounded'

