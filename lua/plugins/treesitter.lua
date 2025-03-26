-- Treesitter: syntax highlighting and more
-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = function()
    pcall(require("nvim-treesitter.install").update { with_sync = true })
  end,
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
        "tsx",
        "json",
        "yaml",
        "css",
        "html",
        "lua",
        "bash",
        "graphql",
        "markdown",
        "prisma",
        "javascript",
        "python",
        "scss",
        "solidity",
        "sql",
      },
    })

    -- Patch parser config for tsx
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
  end,
}
