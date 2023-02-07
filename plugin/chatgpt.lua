-- https://github.com/jackMort/ChatGPT.nvim#configuration
local chatgpt = require('chatgpt')

chatgpt.setup({
  welcome_message = 'Welcome to ChatGPT.nvim',
  max_line_length = 500,
})

-- A keymap to open the basic chat window
vim.keymap.set('n', '<Leader>ee', ':ChatGPT<CR>', { noremap = true, desc = 'ChatGPT' })
-- A keymap to open the Act As chat window
vim.keymap.set('n', '<Leader>ea', ':ChatGPTActAs<CR>', { noremap = true, desc = 'ChatGPTActAs' })
-- A keymap to open the instruction-based chat window
vim.keymap.set('n', '<Leader>ep', ':ChatGPTEditWithInstructions<CR>',
  { noremap = true, desc = 'ChatGPTEditWithInstructions' })
