local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  window = {
    documentation = cmp.config.window.bordered(),
    completion = cmp.config.window.bordered(),
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    { name = "buffer" },
    { name = "path" },
  },
})
