require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>fr", "<cmd>Telescope lsp_references<CR>")

map("i", "jj", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { desc = "Save in any mode" })
