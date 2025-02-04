return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "catppuccin-frappe",
  --   },
  -- },
  {
    "bwlee13/raccoon.nvim",
    name = "raccoon",
    priority = 1000,
    lazy = false,
  },
  {
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "raccoon",
      },
    },
  },
}
