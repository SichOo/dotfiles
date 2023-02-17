local group = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
  desc = "Highlight on Yank",
  group = group("SichoGroup", { clear = true }),
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
  end,
})

autocmd("FileType", {
  group = group("SichoGroup", { clear = true }),
  pattern = {
    "checkhealth",
    "help",
    "man",
  },
  command = "nnoremap <buffer> q <CMD>bdelete<CR>",
})
