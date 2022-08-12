-- load OG conf from vim file
vim.cmd('source ~/.config/nvim/conf.vim')

-- load lua configs (these can overwrite the old config)
require('plugins')
