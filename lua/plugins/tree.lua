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
}
