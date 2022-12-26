-- nvim-cmp setup
local cmp = require 'cmp'
local luasnip = require 'luasnip'
local wk = require 'which-key'

require("luasnip/loaders/from_vscode").lazy_load()

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    -- Scroll down through suggestions
    ['<C-n>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    -- Scroll up through suggestions
    ['<C-p>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
    --["<C-n>"] = cmp.mapping(function(fallback)
    --if cmp.visible() then
    --cmp.select_next_item()
    --elseif luasnip.expand_or_jumpable() then
    --luasnip.expand_or_jump()
    --elseif has_words_before() then
    --cmp.complete()
    --else
    --fallback()
    --end
    --end, { "i", "s" }),

    --["<C-p>"] = cmp.mapping(function(fallback)
    --if cmp.visible() then
    --cmp.select_prev_item()
    --elseif luasnip.jumpable(-1) then
    --luasnip.jump(-1)
    --else
    --fallback()
    --end
    --end, { "i", "s" }),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    --['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  }),
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]

wk.register({
  ['<C-n>'] = { cmp.select_next_item, 'Select next item' },
  ['<C-p>'] = { cmp.select_prev_item, 'Select previous item' },
  ['<C-d>'] = { cmp.scroll_docs, 'Scroll docs down' },
  ['<C-f>'] = { cmp.scroll_docs, 'Scroll docs up' },
  ['<C-e>'] = { cmp.close, 'Close' },
  ['<CR>'] = { cmp.complete, 'Complete' },
}, { mode = 'i' })
