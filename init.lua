-- load OG conf from vim file
vim.cmd('source conf.vim')

-- load lua configs (these can overwrite the old config)
require('plugins')

