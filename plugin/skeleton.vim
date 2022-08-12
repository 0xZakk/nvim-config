if has("autocmd")
  augroup templates
    autocmd BufNewFile ~/slipbox/references/*.md 0r ~/.config/nvim/templates/reference.md
    autocmd BufNewFile ~/slipbox/notes/*.md 0r ~/.config/nvim/templates/note.md
  augroup end
end
