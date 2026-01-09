-- Suppress lspconfig deprecation warning (until nvim-lspconfig v3.0.0 migration)
local original_deprecate = vim.deprecate
vim.deprecate = function(name, alternative, version, plugin, backtrace)
  if plugin ~= "nvim-lspconfig" then
    return original_deprecate(name, alternative, version, plugin, backtrace)
  end
end

require("config.lazy")
require("config.keymaps")
require("config.colors")
require("config.templates")

-- load OG conf from vim file
vim.cmd('source ~/.config/nvim/conf.vim')
