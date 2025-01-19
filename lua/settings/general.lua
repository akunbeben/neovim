vim.opt.scrolloff = 22
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.fillchars = { eob = " " }
vim.opt.clipboard = "unnamedplus"

vim.cmd("colorscheme aura")
vim.cmd("set nowrap")

vim.cmd([[
  augroup FileTypeDetection
    autocmd!
    autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
  augroup END
]])

local notify = pcall(require, "notify")

vim.lsp.handlers["window/showMessage"] = function(_, result)
  notify(result.message, vim.log.levels.INFO)
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    if vim.bo.filetype ~= "lua" then
      require("luasnip").unlink_current()
    end
  end,
})
