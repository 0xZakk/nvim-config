-- Install Packer if it isn't already installed
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.isdirectory(install_path) == 0 then
    print 'downloading packer.nvim'
    packer_bootstrap = vim.fn.system { 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path }
    vim.cmd [[packadd packer.nvim]]
end

-- load OG conf from vim file
vim.cmd('source ~/.config/nvim/conf.vim')

-- load lua configs (these can overwrite the old config)
require('plugins')
