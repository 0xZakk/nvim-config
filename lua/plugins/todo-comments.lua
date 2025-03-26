-- Highlight TODO, FIXME, etc. in comments
-- https://github.com/folke/todo-comments.nvim
return {
  "folke/todo-comments.nvim",
  event = "VeryLazy",
  config = function()
    require("todo-comments").setup({
      signs = true,
      sign_priority = 8,
      keywords = {
        FIX = {
          icon = "",
          color = "error",
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
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
          color = "info",
        },
        AUDIT_ISSUE = {
          icon = "",
          color = "error",
        },
      },
    })

    vim.keymap.set("n", "]t", function()
      require("todo-comments").jump_next()
    end, { desc = "Next todo comment" })

    vim.keymap.set("n", "[t", function()
      require("todo-comments").jump_prev()
    end, { desc = "Previous todo comment" })
  end,
}
