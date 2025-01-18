local vim = vim
local plug = vim.fn["plug#"]

vim.g.mapleader = " "

vim.cmd('call plug#begin("~/.vim/plugged")')

plug("neovim/nvim-lspconfig")
plug("hrsh7th/nvim-cmp")
plug("hrsh7th/nvim-cmp")
plug("hrsh7th/cmp-nvim-lsp")
plug("hrsh7th/cmp-buffer")
plug("hrsh7th/cmp-path")
plug("saadparwaiz1/cmp_luasnip")
plug("L3MON4D3/LuaSnip")
plug("hrsh7th/cmp-nvim-lsp")
plug("jose-elias-alvarez/null-ls.nvim")
plug("echasnovski/mini.indentscope")
plug("nvim-lua/plenary.nvim")
plug("akinsho/bufferline.nvim")
plug("nvim-tree/nvim-web-devicons")
plug("nvim-treesitter/nvim-treesitter")
plug("nvim-telescope/telescope.nvim")
plug("nvim-lualine/lualine.nvim")
plug("nvim-neo-tree/neo-tree.nvim", { ["branch"] = "v2.x" })
plug("MunifTanjim/nui.nvim")
plug("techtuner/aura-neovim")

vim.cmd("call plug#end()")

require("plugins.lsp")
require("plugins.nvim_cmp")
require("plugins.null_ls")
require("plugins.ui")
require("plugins.treesitter")
require("plugins.telescope")
require("plugins.neo_tree")
require("settings.keymaps")
require("settings.general")
