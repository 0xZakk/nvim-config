-- formatter.nvim
-- https://github.com/mhartington/formatter.nvim
return {
  "mhartington/formatter.nvim",
  event = { "BufWritePre" },
  config = function()
    local util = require("formatter.util")

    require("formatter").setup({
      logging = true,
      log_level = vim.log.levels.WARN,
      ["*"] = {
        -- Remove trailing whitespace on save
        require("formatter.filetypes.any").remove_trailing_spaces,
      },
    })
  end,
}
