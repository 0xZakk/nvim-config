return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    local autopairs = require("nvim-autopairs")
    autopairs.setup({
      disable_filetype = { "TelescopePrompt", "vim" },
    })
  end
}
