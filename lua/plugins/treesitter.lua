-- Treesitter: syntax highlighting and more
-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    -- Highlight and indent are enabled by default in newer nvim-treesitter.
    -- Just ensure the parsers we want are installed.
    require("nvim-treesitter").setup()

    local parsers = {
      "tsx", "json", "yaml", "css", "html", "lua", "bash",
      "graphql", "markdown", "prisma", "javascript", "python",
      "scss", "solidity", "sql",
    }

    -- Install missing parsers
    for _, lang in ipairs(parsers) do
      pcall(function()
        if not pcall(vim.treesitter.language.inspect, lang) then
          require("nvim-treesitter.install").install(lang)
        end
      end)
    end
  end,
}
