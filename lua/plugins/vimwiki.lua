return {
  "vimwiki/vimwiki",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/garden/",
        syntax = "markdown",
        ext = ".md",
      },
    }
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "vimwiki",
      command = "set filetype=markdown",
    })
  end,
}
