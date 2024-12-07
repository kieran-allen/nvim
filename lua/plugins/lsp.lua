
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
          "html",
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "williamboman/mason.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      require("lspconfig").lua_ls.setup {
      }
      require("lspconfig").html.setup {
      }
      require("lspconfig").rust_analyzer.setup {
        capabilities = capabilities,
        settings = {
          ["rust-analyzer"] = {}
        },
      }
      require("lspconfig").ts_ls.setup {
      }
    end,
  },
}
