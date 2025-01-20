-- Standalone plugins with less than 10 lines of config go here
return {
  {
    -- color highlighter
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
}
