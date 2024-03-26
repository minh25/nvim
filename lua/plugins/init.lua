return {
  {
    "williamboman/mason.nvim",
    config = function()
      require "configs.mason"
    end,
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
    "stevearc/conform.nvim",
    event = "BufWritePre",
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
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require "configs.nvim-treesitter"
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require "configs.nvim-ts-autotag"
    end,
  },

  {
    "SuperBo/fugit2.nvim",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
      {
        "chrisgrieser/nvim-tinygit", -- optional: for Github PR view
        dependencies = { "stevearc/dressing.nvim" },
      },
    },
    cmd = { "Fugit2", "Fugit2Graph" },
    keys = {
      { "<leader>F", mode = "n", "<cmd>Fugit2<cr>" },
    },
  },

  {
    -- optional: for diffview.nvim integration
    "sindrets/diffview.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- lazy, only load diffview by these commands
    cmd = {
      "DiffviewFileHistory",
      "DiffviewOpen",
      "DiffviewToggleFiles",
      "DiffviewFocusFiles",
      "DiffviewRefresh",
    },
  },
}
