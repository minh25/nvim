local options = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- javascript
    "html-lsp",
    "css-lsp",
    "prettier",
    "prettierd",
    "eslint-lsp",
    "typescript-language-server",

    -- cpp
    "clang-format",
    "clangd",
  },

  automatic_installation = true,
}

require("mason-lspconfig").setup(options)
