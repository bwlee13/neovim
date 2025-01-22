-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-[>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<C-]>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "shift move line up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "shift move line down" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines, cursor in place" })
vim.keymap.set({ "n", "v" }, "dd", [["_dd]], {})
vim.keymap.set({ "n", "v" }, "d", [["_d]], {})
