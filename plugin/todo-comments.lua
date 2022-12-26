-- TODO: This is a todo comment
local todo = require("todo-comments")
local wk = require('which-key')

-- NOTE: This is a note
todo.setup({
  signs = true, -- show icons in the signs columns
  sign_priority = 8, -- sign priority
  keywords = {
    FIX = {
      icon = "", -- icon used for the sign, and in search results
      color = "error", -- can be a hex color, or a named color (see below)
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
      -- signs = false, -- configure signs for some keywords individually
    },
    TODO = { icon = " ", color = "info" },
    HACK = { icon = " ", color = "warning" },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
    AUDIT = {
      icon = "",
      color = "warning",
    },
    AUDIT_OK = {
      icon = "",
      color = "info"
    },
    AUDIT_ISSUE = {
      icon = "",
      color = "error"
    }
  }
})

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
