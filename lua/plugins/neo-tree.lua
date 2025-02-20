return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      bind_to_cwd = false,
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          ".git",
          ".idea",
          ".vscode",
        },
        always_show_by_pattern = {
          ".env*",
        },
      },
    },
  },
}
