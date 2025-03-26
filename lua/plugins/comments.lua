-- Comment.nvim
-- https://github.com/numToStr/Comment.nvim
return {
  "numToStr/Comment.nvim",
  event = "VeryLazy", -- load after startup when needed
  config = function()
    require("Comment").setup()
  end,
}
