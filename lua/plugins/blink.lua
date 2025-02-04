return {
  {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "*",
    opts = {
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },
      keymap = {
        preset = "default",
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-u>"] = { "scroll_documentation_up" },
        ["<C-d>"] = { "scroll_documentation_down" },
        ["<C-h>"] = { "hide" },
        ["<CR>"] = { "accept", "fallback" },
      },

      sources = {
        default = { "lazydev", "markdown" },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          },
          markdown = {
            name = "RenderMarkdown",
            module = "render-markdown.integ.blink",
            fallbacks = { "lsp" },
          },
        },
      },

      -- this should remove suggestions on comments
      -- but it doesn't freaking work

      -- sources = {
      --   default = function()
      --     local node = vim.treesitter.get_node()
      --     if
      --       node and vim.tbl_contains({ "comment", "line_comment", "comment_content", "block_comment" }, node:type())
      --     then
      --       print("In here")
      --       return { "buffer" }
      --     else
      --       print("Not In here")
      --       return { "lsp", "path", "snippets", "buffer" }
      --     end
      --   end,
      -- },

      completion = {
        ghost_text = { enabled = false },
        list = {
          selection = {
            preselect = true,
            auto_insert = false,
          },
        },
      },
    },
    opts_extend = { "sources.default" },
  },
}
