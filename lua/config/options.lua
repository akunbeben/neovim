-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.api.nvim_set_keymap("n", "<C-w>", ":bp|bd #<CR>", { noremap = true, silent = true })
vim.opt.scrolloff = 22
vim.o.termguicolors = true
