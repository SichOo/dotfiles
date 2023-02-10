local telescope = require("telescope")

telescope.setup({
  defaults = {},
})

telescope.load_extension("fzy_native")
telescope.load_extension("fzf_writer")
telescope.load_extension("ui-select")
telescope.load_extension("file_browser")
