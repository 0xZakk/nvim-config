-- Indent Blankline (IBL)
-- https://github.com/lukas-reineke/indent-blankline.nvim
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("ibl").setup()
  end,
}
