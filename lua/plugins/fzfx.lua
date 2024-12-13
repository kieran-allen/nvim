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
        { "<leader>fa", "<cmd>FzfxFiles<cr>", desc = "Find all files" },
        { "<leader>ff", "<cmd>FzfxGFiles<cr>", desc = "Find git commited files" },
        { "<leader>fg", "<cmd>FzfxGLiveGrep<cr>", desc = "Find git grep in file" },
        { "<leader>fb", "<cmd>FzfxBufLiveGrep<cr>", desc = "Find in buffer" },
        { "<leader>FG", "<cmd>FzfxLiveGrep<cr>", desc = "Find in file" },
        { "<leader>FB", "<cmd>FzfxGBranches<cr>", desc = "Find git branches" },
        { "<leader>FL", "<cmd>FzfxGBlame<cr>", desc = "Find git blame" },
    },
    config = function()
      require("fzfx").setup()
    end,
  },
}
