vim.api.nvim_create_augroup("templates", { clear = true })

vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "~/slipbox/references/*.md",
  command = "0r ~/.config/nvim/templates/reference.md",
  group = "templates",
})

vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "~/slipbox/notes/*.md",
  command = "0r ~/.config/nvim/templates/note.md",
  group = "templates",
})

vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "~/slipbox/articles/*.md",
  command = "0r ~/.config/nvim/templates/article.md",
  group = "templates",
})
