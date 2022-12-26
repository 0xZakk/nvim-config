-- https://github.com/jackMort/ChatGPT.nvim#configuration
local chatgpt = require('chatgpt')

chatgpt.setup({
  welcome_message = 'Welcome to ChatGPT.nvim!',
  max_line_length = 250,
})

vim.keymap.set('n', '<Leader>ee', ':ChatGPT<CR>', { noremap = true, desc = 'ChatGPT' })
