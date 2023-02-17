local nl = vim.F.npcall(require, "null-ls")
if not nl then
  return
end

local mason_nl = require("mason-null-ls")
mason_nl.setup({
  ensure_installed = {
    "stylua",
    "prettier",
  },
})

local formatting = nl.builtins.formatting
local default = function(source_name, methods)
  require("mason-null-ls.automatic_setup")(source_name, methods)
end
mason_nl.setup_handlers({
  default,
  stylua = function()
    nl.register(formatting.stylua)
  end,
})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      -- apply whatever logic you want (in this example, we'll only use null-ls)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  })
end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- add to your shared on_attach callback
local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        lsp_formatting(bufnr)
      end,
    })
  end
end

nl.setup({
  on_attach = on_attach,
})
