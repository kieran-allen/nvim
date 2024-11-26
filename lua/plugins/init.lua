return {
  "nvim-tree/nvim-web-devicons",
  { 
    "nvim-tree/nvim-tree.lua",
    opts = { view = { width = 30 } },
    keys = {
      { "<leader>bb", "<cmd>NvimTreeToggle<cr>", desc = "Toggle nvim tree" },
    },
  },
  "nvim-lua/plenary.nvim",
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf", config = true, dependencies = { "neovim/nvim-lspconfig" } },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, opts = { flavour = "frappe" } },  
  {
    "junegunn/fzf",
    build = function()
      vim.fn["fzf#install"]()
    end,
  },
  {
    "linrongbin16/fzfx.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", 'junegunn/fzf' },
    keys = {
        { "<leader>ff", "<cmd>FzfxFiles<cr>", desc = "Fuzzy search files" }
    },
    config = function()
      require("fzfx").setup()
    end,
  },
}

