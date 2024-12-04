return { 
  { 
    "nvim-tree/nvim-tree.lua",
    opts = { view = { width = 30 } },
    keys = {
      { "<leader>bb", "<cmd>NvimTreeToggle<cr>", desc = "NvimTreeToggle" },
      { "<leader>bf", "<cmd>NvimTreeFocus<cr>", desc = "NvimTreeFocus" },
      { "<leader>bz", "<cmd>NvimTreeFindFile<cr>", desc = "NvimTreeFindFile" },
    },
  },
  "folke/which-key.nvim",
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
        { "<leader>fa", "<cmd>FzfxFiles<cr>", desc = "Fuzzy search files" },
        { "<leader>ff", "<cmd>FzfxGFiles<cr>", desc = "FzfxGFiles" },
    },
    config = function()
      require("fzfx").setup()
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
}

