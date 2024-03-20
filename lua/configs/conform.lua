local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    -- go = { "goimports", "gofmt" },

    javascript = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    typescript = { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },

    -- python = function(bufnr)
    --   if require("conform").get_formatter_info("ruff_format", bufnr).available then
    --     return { "ruff_format" }
    --   else
    --     return { "isort", "black" }
    --   end
    -- end,
    --
    -- cpp = { "clang-format" },

    ["*"] = { "codespell" },

    ["_"] = { "trim_whitespace" },
  },

  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 500,
  },

  format_after_save = {
    lsp_fallback = true,
  },

  log_level = vim.log.levels.ERROR,

  notify_on_error = true,
}

require("conform").setup(options)
