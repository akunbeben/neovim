local null_ls = require("null-ls")
local format_on_save_group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true })
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.pint,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.diagnostics.luacheck.with({
      extra_args = { "--globals", "vim" },
    }),
  },

  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = format_on_save_group, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = format_on_save_group,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})
