-- Treesitter: syntax highlighting and more
-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
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
  },
}
