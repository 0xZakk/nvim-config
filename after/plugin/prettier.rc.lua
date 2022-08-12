local status, prettier = pcall(require, "prettier")
if (not status) then return end

local null_ls = require("null-ls")

null_ls.setup({
  on_attach = function(client, bufnr)
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
    end
  end,
})

prettier.setup {
  filetypes = {
    "css",
    "scss",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "yaml",
    "markdown",
  },
  bracket_spacing = true,
  trailing_comma = 'all'
}
