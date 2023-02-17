require("bufferline").setup({
  options = {
    mode = "buffers",
    numbers = "none",
    indicator = {
      icon = "",
      style = "none",
    },
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = true,
      },
    },
  },
})

local map = vim.keymap.set
map("n", "<M-,>", "<CMD>BufferLineCycleNext<CR>")
map("n", "<M-.>", "<CMD>BufferlineCyctlePrev<CR>")
map("n", "<M-x>", "<CMD>bdelete<CR>")
