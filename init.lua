-- install Lazy if it isn't already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "plugins" }  -- auto-loads all files in lua/plugins/
})
require("config.keymaps")
require("config.colors")

-- load OG conf from vim file
vim.cmd('source ~/.config/nvim/conf.vim')
vim.cmd('source ~/.config/nvim/plugin/nord.vim')

vim.cmd('source ~/.config/nvim/plugin/nord.vim')
