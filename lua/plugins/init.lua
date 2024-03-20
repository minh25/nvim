return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "mfussenegger/nvim-lint",
    config = function()
      require "configs.nvim-lint"
    end,
  },

  {
    "williamboman/mason.nvim",
    -- config = function()
    --   require "configs.mason"
    -- end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require "configs.mason-lspconfig"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require "configs.nvim-treesitter"
    end,
  },
}
