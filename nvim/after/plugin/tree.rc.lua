vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup()
local keymap = vim.keymap.set
keymap('n', '<leader>ee', ':NvimTreeToggle')
