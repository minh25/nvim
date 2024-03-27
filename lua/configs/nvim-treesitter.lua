local options = {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

  sync_install = true,

  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  indent = {
    enable = true,
  },
}

require("nvim-treesitter.configs").setup(options)

local vim = vim

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

function _G.foldtext()
  local foldstart = vim.v.foldstart
  local foldend = vim.v.foldend
  local foldtext = vim.fn.getline(foldstart)
  local hiddenLines = foldend - foldstart
  foldtext = foldtext .. " +" .. hiddenLines .. " lines"
  return foldtext
end
vim.opt.foldtext = "v:lua.foldtext()"
