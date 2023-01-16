local builtin = require('telescope.builtin')
local bind = vim.keymap.set

bind('n', '<leader>pf', builtin.find_files, {})
bind('n', '<C-p>', builtin.git_files, {})
bind('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
