-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap.set
local keyopts = { silent = true }

-- Better paste
keymap("v", "p", '"_dP', keyopts)

-- Keep cursor vertically centered
-- keymap("n", "j", "jzz", keyopts)
-- keymap("n", "k", "kzz", keyopts)

-- Press jj fast to enter
-- keymap("i", "jj", "<ESC>", keyopts)

-- Press leader then W to SudaWrite
keymap("n", "<leader>W", ":SudaWrite<CR>", keyopts)
