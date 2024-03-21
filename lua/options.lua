require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local vim = vim
local opt = vim.opt
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

function _G.MyFoldText()
  return vim.fn.getline(vim.v.foldstart) .. " ... " .. vim.fn.getline(vim.v.foldend):gsub("^%s*", "")
end
function _G.MyFoldText2()
  local foldstart = vim.v.foldstart
  local foldend = vim.v.foldend
  -- local foldlevel = vim.v.foldlevel
  local foldtext = vim.fn.getline(foldstart)

  -- Calculate the number of hidden lines
  local hiddenLines = foldend - foldstart

  -- Format the fold text
  foldtext = foldtext .. " +" .. hiddenLines .. " lines"

  -- Indent the fold text based on the fold level
  -- foldtext = string.rep(' ', foldlevel) .. foldtext

  return foldtext
end
vim.opt.foldtext = "v:lua.MyFoldText2()"
