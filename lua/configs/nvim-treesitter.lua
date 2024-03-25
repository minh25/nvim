local options = {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}

require("nvim-treesitter.configs").setup(options)

local vim = vim

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
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
