local present, null_ls = pcall(require, "null-ls")
if not present then
  return
end

require("mason-null-ls").setup({
  ensure_installed = {
    "stylua",
    "prettier",
    "markdownlint",
  },
  automatic_installation = false,
  automatic_setup = false,
})

local builtins = null_ls.builtins
local sources = {
  builtins.formatting.stylua.with({
    filetypes = { "lua" },
    extra_args = { "--config-path", vim.fn.expand("~/.config/stylua/stylua.toml") },
  }),
}

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

null_ls.setup({
  debug = true,
  sources = sources,
  on_attach = on_attach,
})
