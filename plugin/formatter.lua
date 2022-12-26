local util = require("formatter.util")

require("formatter").setup({
  logging = true,
  log_level = vim.log.levels.WARN,
  ["*"] = {
    require("formatter.filetypes.any").remove_trailing_spaces,
  }
})
