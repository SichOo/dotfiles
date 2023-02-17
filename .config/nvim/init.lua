local load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end

vim.g.mapleader = " "
vim.g.maplocalleader = ","

load("sicho.reload")
load("sicho.builtins")
load("sicho.lazy")
