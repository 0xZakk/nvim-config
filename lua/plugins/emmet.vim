return {
  "mattn/emmet-vim",
  init = function()
    -- Optional: set a custom leader key for emmet (uncomment if needed)
    -- vim.g.user_emmet_leader_key = "<Tab>"

    vim.g.user_emmet_settings = {
      ["javascript.jsx"] = {
        extends = "jsx",
      },
    }
  end,
}
