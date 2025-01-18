require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "python", "javascript", "typescript", "tsx" },
  highlight = { enable = true },
})
