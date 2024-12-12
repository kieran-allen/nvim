return {
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
        { "<leader>fg", "<cmd>FzfxGLiveGrep<cr>", desc = "FzfxGLiveGrep" },
        { "<leader>fb", "<cmd>FzfxBufLiveGrep<cr>", desc = "FzfxBufLiveGrep" },
        { "<leader>FG", "<cmd>FzfxLiveGrep<cr>", desc = "FzfxLiveGrep" },
        { "<leader>FB", "<cmd>FzfxGBranches<cr>", desc = "Find git branches" },
    },
    config = function()
      require("fzfx").setup()
    end,
  },
}
