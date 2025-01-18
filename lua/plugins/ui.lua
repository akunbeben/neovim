require("bufferline").setup({
  options = {
    separator_style = "slope",
    show_close_icon = false,
    show_buffer_close_icons = false,
    diagnostics = "nvim_lsp",
    hover = {
      enabled = true,
      delay = 200,
      reveal = { "close" },
    },
  },
})

require("mini.indentscope").setup({
  symbol = "│",
  options = { try_as_border = true },
})

local lualine = require("lualine")
lualine.setup({
  options = {
    theme = "gruvbox",
    section_separators = { "", "" },
    component_separators = { "", "" },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = {
      function()
        if vim.bo.filetype == "neo-tree" then
          return "NeoTree"
        else
          return vim.fn.expand("%:t")
        end
      end,
    },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  extensions = { "neo-tree" },
})
