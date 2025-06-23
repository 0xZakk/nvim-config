-- LSP configuration
-- https://github.com/neovim/nvim-lspconfig
return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "j-hui/fidget.nvim",
    "folke/neodev.nvim",
  },
  config = function()
    local nvim_lsp = require("lspconfig")
    local protocol = require("vim.lsp.protocol")
    local wk = require("which-key")

    local on_attach = function(client, bufnr)
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

      buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
      local opts = { noremap = true, silent = true }

      buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
      buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)

      if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = vim.api.nvim_create_augroup("Format", { clear = true }),
          buffer = bufnr,
          callback = function() vim.lsp.buf.format() end
        })
      end
    end

    protocol.CompletionItemKind = {
      '', '', '', '', '', '', '', 'ﰮ',
      '', '', '', '', '', '', '﬌', '',
      '', '', '', '', '', '', '', 'ﬦ', '',
    }

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- LSP server setups
    nvim_lsp.flow.setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }

    nvim_lsp.tsserver.setup {
      on_attach = on_attach,
      filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
      cmd = { "typescript-language-server", "--stdio" },
      capabilities = capabilities,
    }

    nvim_lsp.sourcekit.setup {
      on_attach = on_attach,
    }

    nvim_lsp.lua_ls.setup {
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
        },
      },
    }

    -- Diagnostics config
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        update_in_insert = false,
        virtual_text = { spacing = 4, prefix = "●" },
        severity_sort = true,
      }
    )

    -- Diagnostic signs
    local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    vim.diagnostic.config({
      virtual_text = { prefix = "●" },
      update_in_insert = true,
      float = { source = "always" },
    })

    -- LSP keymaps (which-key)
    wk.register({
      g = {
        D = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
        i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Implementation" },
      },
    })
  end,
}
