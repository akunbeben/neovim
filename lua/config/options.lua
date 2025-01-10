-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.api.nvim_set_keymap("n", "<C-w>", ":bp|bd #<CR>", { noremap = true, silent = true })
vim.opt.scrolloff = 22
vim.o.termguicolors = true
vim.g.lazyvim_php_lsp = "intelephense"
vim.api.nvim_create_autocmd("BufRead", {
  pattern = "*.blade.php",
  command = "set filetype=blade",
})

vim.g.clipboard = {
  copy = { ["+"] = "wl-copy", ["*"] = "wl-copy" },
  paste = { ["+"] = "wl-paste --no-newline", ["*"] = "wl-paste --no-newline" },
}
