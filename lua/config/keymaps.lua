local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local opts = { noremap = true, silent = true }

-- Insert mode: jk to escape
map("i", "jk", "<ESC>", opts)

-- Swap ; and : safely
map("n", ";", ":", opts)
map("n", ":", ";", opts)

-- Disable arrow keys
map("", "<Up>", "<Nop>", opts)
map("", "<Down>", "<Nop>", opts)
map("", "<Left>", "<Nop>", opts)
map("", "<Right>", "<Nop>", opts)

-- Leader key
vim.g.mapleader = " "

-- Reload/init mappings (customize path if needed)
map("n", "<leader>ev", ":e ~/.config/nvim/init.lua<CR>", opts)
map("n", "<leader>sv", ":source ~/.config/nvim/init.lua<CR>", opts)

-- Yank to system clipboard
map("v", "<leader>c", '"*y', opts)

-- Window navigation
map("n", "<C-J>", "<C-W><C-J>", opts)
map("n", "<C-K>", "<C-W><C-K>", opts)
map("n", "<C-L>", "<C-W><C-L>", opts)
map("n", "<C-H>", "<C-W><C-H>", opts)

-- Splits
map("n", "vv", "<C-W>v", opts)
map("n", "ss", "<C-W>s", opts)

-- Buffer navigation
map("n", "<leader>p", ":bp<CR>", opts)
map("n", "<leader>n", ":bn<CR>", opts)
map("n", "<leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)

-- Git shortcuts (Fugitive)
map("n", "<leader>ga", ":Git add<CR>", opts)
map("n", "<leader>gc", ":Git commit<CR>", opts)
map("n", "<leader>gs", ":Git<CR>", opts)
map("n", "<leader>gl", ":Git log<CR>", opts)
map("n", "<leader>gd", ":Git diff<CR>", opts)

-- $e to expand current file directory in command-line mode
cmd [[
  cnoremap $e e <C-\>eCurrentFileDir()<CR>
  function! CurrentFileDir()
    return "e " . expand("%:p:h") . "/"
  endfunction
]]

-- vim.g.NERDTreeChDirMode = 3
-- This broke. Fix it if you want to use NERDTree and remove the remapping
-- /lua/plugins/telescope.lua
-- map("n", "<leader>kb", ":NERDTreeToggle<CR>", opts)
-- map("n", "<leader>n", ":NERDTreeFocus<CR>", opts)


-- Show hidden files in NERDTree
-- vim.g.NERDTreeShowHidden = 1
