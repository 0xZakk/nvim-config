local status, prettier = pcall(require, "prettier")
if (not status) then return end

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
