require('lspsaga').setup({

})

local mmap = vim.keymap.set

mmap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
mmap({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
mmap("n", "gr", "<cmd>Lspsaga rename<CR>")
mmap("n", "gr", "<cmd>Lspsaga rename ++project<CR>")
mmap("n", "gd", "<cmd>Lspsaga peek_definition<CR>")
mmap("n","gd", "<cmd>Lspsaga goto_definition<CR>")
mmap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")
mmap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")
mmap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")
mmap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
mmap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")

mmap("n", "[E", function()
  require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
end)
mmap("n", "]E", function()
  require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
end)

mmap("n","<leader>o", "<cmd>Lspsaga outline<CR>")
mmap("n", "K", "<cmd>Lspsaga hover_doc<CR>")
mmap("n", "K", "<cmd>Lspsaga hover_doc ++keep<CR>")
mmap("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>")
mmap("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>")
mmap({"n", "t"}, "<A-d>", "<cmd>Lspsaga term_toggle<CR>")
