-- Trouble: a pretty diagnostics, references, etc. panel
-- https://github.com/folke/trouble.nvim
return {
  "folke/trouble.nvim",
  event = "VeryLazy",
  config = function()
    require("trouble").setup({
      position = "left",
      icons = false,
      fold_open = "v",
      fold_closed = ">",
      indent_lines = false,
      signs = {
        error = "error",
        warning = "warn",
        hint = "hint",
        information = "info",
      },
      use_diagnostic_signs = true,
    })

    -- Keymaps
    vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
      { silent = true, noremap = true, desc = "Toggle Trouble" })
    vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
      { silent = true, noremap = true, desc = "Toggle Workspace Diagnostics" })
    vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
      { silent = true, noremap = true, desc = "Toggle Document Diagnostics" })
    vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
      { silent = true, noremap = true, desc = "Toggle Location List" })
    vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
      { silent = true, noremap = true, desc = "Toggle Quickfix List" })
    vim.keymap.set("n", "tt", "<cmd>TodoTrouble<cr>",
      { silent = true, noremap = true, desc = "Toggle Todo List" })
    vim.keymap.set("n", "tn", "<cmd>TodoTrouble keywords=NOTE<cr>",
      { silent = true, noremap = true, desc = "Toggle Notes List" })
    vim.keymap.set("n", "ta", "<cmd>TodoTrouble keywords=AUDIT,AUDIT_OK,AUDIT_ISSUE<cr>",
      { silent = true, noremap = true, desc = "Toggle Audit List" })
  end,
}
