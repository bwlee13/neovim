-- Standalone plugins with less than 10 lines of config go here
return {
  {
    -- color highlighter
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  { "nvim-tree/nvim-web-devicons", opts = {} },
  {
    -- better markdown support
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use standalone mini plugins
    -- dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
    main = "render-markdown",
    name = "render-markdown",
    ft = { "markdown" },
    opts = {},
  },
}
