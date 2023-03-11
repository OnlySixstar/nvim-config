vim.g.mapleader = " "
local keymap = vim.keymap

-- cancel hightlight
keymap.set("n","<leader>nh",":nohl<CR>")
-- -----------Plugins--------------
-- nvim-tree
keymap.set("n","<leader>e",":NvimTreeToggle<CR>")

keymap.set("n","<C-S-L>",":bnext<CR>")
keymap.set("n","<C-S-H>",":bprevious<CR>")
