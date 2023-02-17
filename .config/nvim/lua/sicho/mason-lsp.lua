local lspconfig = vim.F.npcall(require, "lspconfig")
if not lspconfig then
  return
end

require("lspconfig.ui.windows").default_options.border = "rounded"

require("fidget").setup({
  text = {
    spinner = "dots",
    done = "",
  },
  window = {
    relative = "win",
    blend = 0,
    zindex = 1000,
    border = "rounded",
  },
})

require("mason").setup({
  ui = {
    border = "rounded",
    height = 0.87,
    width = 0.7,
  },
})

local masonlsp = require("mason-lspconfig")
masonlsp.setup({
  automatic_installation = false,
  ensure_installed = {
    "cssls",
    "html",
    "lua_ls",
    "tsserver",
  },
})

local default = function(server_name)
  lspconfig[server_name].setup({})
end

masonlsp.setup_handlers({
  default,
  ["lua_ls"] = function()
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = {
              "vim",
            },
          },
        },
      },
    })
  end,
})
