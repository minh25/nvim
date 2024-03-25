local options = {
  -- linters_by_ft = {
  -- },
}

require("lint").setup(options)

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
