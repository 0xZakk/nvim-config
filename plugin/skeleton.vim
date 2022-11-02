if has("autocmd")
  augroup templates
    "Slipbox
    autocmd BufNewFile ~/slipbox/references/*.md 0r ~/.config/nvim/templates/reference.md
    autocmd BufNewFile ~/slipbox/notes/*.md 0r ~/.config/nvim/templates/note.md
    autocmd BufNewFile ~/slipbox/articles/*.md 0r ~/.config/nvim/templates/article.md
  augroup end
end
