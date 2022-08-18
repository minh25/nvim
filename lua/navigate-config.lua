local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<A-h>', '<C-w><C-h>', opts)
map('n', '<A-l>', '<C-w><C-l>', opts)
map('n', '<A-j>', '<C-w><C-j>', opts)
map('n', '<A-k>', '<C-w><C-k>', opts)

