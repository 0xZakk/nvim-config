return {
  -- BASIC CONFIG
  { 'tpope/vim-sensible' },
  { 'tpope/vim-surround' },
  { 'rhysd/clever-f.vim' },
  { 'junegunn/fzf' },
  { 'junegunn/fzf.vim' },
  { 'airblade/vim-rooter' },
  { 'scrooloose/nerdtree' },
  { 'tpope/vim-repeat' },

  -- ADVANCED CONFIG
  { 'lukas-reineke/indent-blankline.nvim' },
  { 'numToStr/Comment.nvim' },
  { 'tpope/vim-sleuth' },
  { 'windwp/nvim-autopairs' },
  { 'windwp/nvim-ts-autotag' },
  { 'tpope/vim-eunuch' },
  { 'folke/todo-comments.nvim' },
  { 'folke/which-key.nvim' },

  -- GIT
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-rhubarb' },
  { 'lewis6991/gitsigns.nvim' },

  -- AESTHETIC
  { 'arcticicestudio/nord-vim' },
  { 'kdheepak/tabline.nvim' },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' }
  },

  -- LSP, COMPLETION, SNIPPETS
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'j-hui/fidget.nvim',
      'folke/neodev.nvim',
    },
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
    },
  },

  -- TREESITTER
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependencies = { 'nvim-treesitter/nvim-treesitter' }
  },

  -- COPILOT
  { 'github/copilot.vim' },

  -- CHATGPT
  {
    'jackMort/ChatGPT.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
  },

  -- TELESCOPE
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-telescope/telescope-file-browser.nvim' },
  { 'BurntSushi/ripgrep' },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable('make') == 1
    end,
  },
  { 'folke/trouble.nvim' },

  -- FORMATTERS
  { 'mhartington/formatter.nvim' },

  -- LANGUAGE SPECIFIC
  { 'mattn/emmet-vim' },
  { 'pangloss/vim-javascript' },
  { 'maxmellon/vim-jsx-pretty' },
  { 'MunifTanjim/prettier.nvim' },
  { 'jparise/vim-graphql' },
  { 'tomlion/vim-solidity' },
  { 'vyperlang/vim-vyper' },
  { 'pantharshit00/vim-prisma' },

  -- WRITING
  { 'vimwiki/vimwiki' },
  { 'junegunn/goyo.vim' },
}


