require("nvim-tree").setup({
  auto_reload_on_write = true,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = true,
  sort_by = "case_sensitive",
  view = {
    float = {
      enable = true,
      quit_on_focus_loss = true,
      open_win_config = {
        border = "rounded",
        width = 30,
        height = 34,
      },
    },
  },
  on_attach = function(bufnr)
    local bufmap = function(lhs, rhs, desc)
      vim.keymap.set("n", lhs, rhs, { buffer = bufnr, desc = desc })
    end

    local api = require("nvim-tree.api")

    bufmap("L", api.node.open.edit, "Expand folder or goto file")
    bufmap("H", api.node.navigate.parent_close, "Close parent folder")
    bufmap("gh", api.tree.toggle_hidden_filter, "Toggle hidden files")
  end,
})

local map = vim.keymap.set
map("n", "<localleader>e", "<CMD>NvimTreeToggle<CR>")

local autocmd = vim.api.nvim_create_autocmd
local group = vim.api.nvim_create_augroup("NvimTreeGroup", { clear = true })

autocmd("BufEnter", {
  desc = "auto close if last buffer",
  group = group,
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
      vim.cmd("quit")
    end
  end,
})
