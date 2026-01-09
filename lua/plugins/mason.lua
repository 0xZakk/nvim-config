-- Mason: LSP installer
-- https://github.com/williamboman/mason.nvim
return {
  "williamboman/mason.nvim",
  event = "VeryLazy",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup({
      ui = {
        border = "rounded",
      },
    })

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",               -- replaced deprecated sumneko_lua
        "bashls",
        "cssls",
        "dockerls",
        "eslint",
        "emmet_ls",
        "graphql",
        "html",
        "jsonls",
        "ts_ls",
        "prismals",
        "jedi_language_server",
        "solc",
        "yamlls",
      },
    })
  end,
}
