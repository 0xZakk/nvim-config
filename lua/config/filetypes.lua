-- Treat JSON-with-comments files as `jsonc` so jsonls and treesitter don't
-- flag `//` and `/* */` (and trailing commas) as errors. jsonls advertises
-- both `json` and `jsonc` filetypes, so this is all that's needed.

vim.filetype.add({
  filename = {
    ["tsconfig.json"] = "jsonc",
    ["jsconfig.json"] = "jsonc",
    ["cmux.json"] = "jsonc",
    [".eslintrc.json"] = "jsonc",
  },
  pattern = {
    [".*/%.vscode/.*%.json"] = "jsonc",
    [".*/%.claude/.*%.json"] = "jsonc",
    [".*/tsconfig%..*%.json"] = "jsonc",
  },
})

-- Fallback: any .json file that actually contains // or /* comments gets
-- promoted to jsonc on read.
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  pattern = "*.json",
  callback = function(args)
    if vim.bo[args.buf].filetype == "jsonc" then return end
    local lines = vim.api.nvim_buf_get_lines(args.buf, 0, 200, false)
    for _, line in ipairs(lines) do
      if line:match("^%s*//") or line:match("^%s*/%*") then
        vim.bo[args.buf].filetype = "jsonc"
        return
      end
    end
  end,
})
