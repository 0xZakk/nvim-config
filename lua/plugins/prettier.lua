-- prettier.nvim
-- https://github.com/MunifTanjim/prettier.nvim
return {
  "MunifTanjim/prettier.nvim",
  event = { "BufWritePre" },
  config = function()
    require("prettier").setup({
      filetypes = {
        "css",
        "scss",
        "html",
        "graphql",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "json",
        "yaml",
        "markdown",
        "solidity",
      },
      bracket_spacing = true,
      trailing_comma = "all",
      tab_width = 4,
      semi = true,
      use_tabs = false,
    })

    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = {
        "*.js", "*.jsx", "*.ts", "*.tsx", "*.json",
        "*.css", "*.scss", "*.html", "*.yaml", "*.md",
        "*.graphql", "*.sol",
      },
      callback = function()
        vim.cmd("Prettier")
      end
    })
  end,
}
