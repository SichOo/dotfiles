local req = function(mod)
	package.loaded[mod] = nil
	require(mod)
end

vim.g.maplocalleader = ','
vim.g.mapleader = ' '

req'sicho.options'
req'sicho.keymaps'
req'sicho.packages'
