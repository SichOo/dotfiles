local lspconfig = vim.F.npcall(require, 'lspconfig')
if not lspconfig then
  return
end

require('lspconfig.ui.windows').default_options.border = 'rounded'

require('mason').setup({
  ui = {
    border = 'rounded',
    width = 0.6,
    height = 0.6,
  },
})

local mason_lsp = require('mason-lspconfig')
mason_lsp.setup({
  automatic_installation = true,
  ensure_installed = {
    'tsserver',
    'sumneko_lua',
    'vimls',
  },
})


local default = function(server_name)
  lspconfig[server_name].setup{}
end

mason_lsp.setup_handlers({
  default,
  ['sumneko_lua'] = function()
    lspconfig.sumneko_lua.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = {
              'vim',
            },
          },
        },
      },
    })
  end

})

