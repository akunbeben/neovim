local vim = vim
local plug = vim.fn["plug#"]

vim.g.mapleader = " "

vim.cmd('call plug#begin("~/.vim/plugged")')
plug("rcarriga/nvim-notify")
plug("williamboman/mason.nvim")
plug("williamboman/mason-lspconfig.nvim")
plug("neovim/nvim-lspconfig")
plug("hrsh7th/nvim-cmp")
plug("hrsh7th/cmp-nvim-lsp")
plug("hrsh7th/cmp-buffer")
plug("hrsh7th/cmp-path")
plug("saadparwaiz1/cmp_luasnip")
plug("L3MON4D3/LuaSnip")
plug("hrsh7th/cmp-nvim-lsp")
plug("jose-elias-alvarez/null-ls.nvim")
plug("echasnovski/mini.indentscope")
plug("nvim-lua/completion-nvim")
plug("nvim-lua/plenary.nvim")
plug("akinsho/bufferline.nvim")
plug("nvim-tree/nvim-web-devicons")
plug("nvim-treesitter/nvim-treesitter")
plug("nvim-telescope/telescope.nvim")
plug("nvim-lualine/lualine.nvim")
plug("nvim-neo-tree/neo-tree.nvim", { ["branch"] = "v3.x" })
plug("MunifTanjim/nui.nvim")
plug("techtuner/aura-neovim")
plug("akinsho/toggleterm.nvim")

vim.cmd("call plug#end()")

local config_files = vim.fn.globpath("~/.config/nvim/lua/plugins/", "*.lua", false, true)
for _, config_file in ipairs(config_files) do
  local module = config_file:match("lua/(.*)%.lua$"):gsub("/", ".")
  require(module)
end

local config_files = vim.fn.globpath("~/.config/nvim/lua/settings/", "*.lua", false, true)
for _, config_file in ipairs(config_files) do
  local module = config_file:match("lua/(.*)%.lua$"):gsub("/", ".")
  require(module)
end
