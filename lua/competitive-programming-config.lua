local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<F9>', '<Cmd>!g++ -std=c++14 % -o %:r<CR>', opts)
map('n', '<F10>', '<Cmd>!%:r<CR>', opts)

