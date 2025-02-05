-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = "unnamedplus"
vim.opt.formatoptions:remove("o")
vim.opt.scrolloff = 10
-- This forces plugins like neo-tree and snacks.terminal to always open at project level
vim.g.root_spec = { "cwd" }
