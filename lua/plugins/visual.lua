return { 
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "latte"
      });
    end,
  },
  "nvim-tree/nvim-web-devicons",
}

