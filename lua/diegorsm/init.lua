vim.g.mapleader = ","
-- NVIM-TREE
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("diegorsm.keybindings")
require("diegorsm.ui")
require("diegorsm.lazy")
require("diegorsm.setup")

-- COLORSCHEME
vim.cmd.colorscheme("catppuccin")
