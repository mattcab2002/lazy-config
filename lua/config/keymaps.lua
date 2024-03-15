-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>`", "<cmd>ToggleTerm<cr>", { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<leader>z", "<cmd>Centerpad<cr>", { silent = true, noremap = true })
