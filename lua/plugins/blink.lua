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

      -- this should remove suggestions on comments
      sources = {
        default = function()
          local node = vim.treesitter.get_node()
          if
            node and vim.tbl_contains({ "comment", "line_comment", "comment_content", "block_comment" }, node:type())
          then
            return { "buffer" }
          else
            return { "lsp", "path", "snippets", "buffer" }
          end
        end,
      },
      signature = {
        enabled = false,
      },

      completion = {
        ghost_text = { enabled = false },
        list = {
          selection = {
            preselect = false,
            auto_insert = false,
          },
        },
      },
    },
    opts_extend = { "sources.default" },
  },
}
