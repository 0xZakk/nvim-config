-- LuaSnip snippet loaders
-- https://github.com/L3MON4D3/LuaSnip
return {
  "L3MON4D3/LuaSnip",
  event = "InsertEnter",
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
    require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })

    require("luasnip").filetype_extend("html", { "liquid" })
  end,
}
