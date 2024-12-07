return {
  "nvim-lua/plenary.nvim",
  "sindrets/diffview.nvim",
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "linrongbin16/fzfx.nvim",
    },
    config = true,
    keys = {
      { "<leader>ng", "<cmd>Neogit<cr>", desc = "Neogit" },
      { "<leader>nc", "<cmd>Neogit commit<cr>", desc = "Neogit commit" },
    },
  }
}
