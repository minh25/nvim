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
    "eslint-d",
    "typescript-language-server",

    -- cpp
    "clang-format",
    "clangd",
  },
}

require("mason-lspconfig").setup(options)
