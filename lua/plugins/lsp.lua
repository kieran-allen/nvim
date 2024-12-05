return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "ts_ls",
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "williamboman/mason.nvim",
    },
    config = function()
      require("lspconfig").lua_ls.setup {}
      require("lspconfig").rust_analyzer.setup {
        settings = {
          ["rust-analyzer"] = {}
        },
      }
      require("lspconfig").ts_ls.setup {}
    end,
  },
}
