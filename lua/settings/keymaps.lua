vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-Space>", "cmp#complete()", { expr = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cd", ":lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "H", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "L", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<silent> cp", '"+y', { noremap = true })
vim.api.nvim_set_keymap("n", "<silent> cv", '"+p', { noremap = true })
vim.api.nvim_set_keymap("n", "<silent> x", '"_x', { noremap = true })

vim.api.nvim_set_keymap("n", "<C-w>", ":bp|bd #<CR>", { noremap = true, silent = true })

-- Toggleterm
vim.api.nvim_set_keymap("n", "<leader>tf", "<Cmd>ToggleTerm direction=float<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>tv",
  "<Cmd>ToggleTerm size=40 direction=vertical<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>th",
  "<Cmd>ToggleTerm size=20 direction=horizontal<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>tn", "<Cmd>TermExec cmd='bash'<CR>", { noremap = true, silent = true })
