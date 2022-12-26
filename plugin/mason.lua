local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({
  ui = {
    border = "rounded"
  }
})

lspconfig.setup {
  ensure_installed = { "sumneko_lua",
    "bashls",
    "cssls",
    "dockerls",
    "eslint",
    "emmet_ls",
    "graphql",
    "html",
    "jsonls",
    "tsserver",
    "remark_ls",
    "prismals",
    "jedi_language_server",
    "solc",
    "yamlls",
  },
}
