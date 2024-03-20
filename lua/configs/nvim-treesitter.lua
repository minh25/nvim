local options = {
  ensure_installed = {
    "vim",
    "lua",
    "vimdoc",
    "html",
    "css",
  },
}

require("nvim-treesitter.configs").setup(options)
