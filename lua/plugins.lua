local status, packer = pcall(require, "packer")

if (not status) then
  print("Packer is not installed")
  return
end


packer.startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

  --
  -- BASIC CONFIG
  --

  -- Vim Sensible
  -- https://github.com/tpope/vim-sensible
  use 'tpope/vim-sensible'

  -- Surround
  -- https://github.com/tpope/vim-surround
  use 'tpope/vim-surround'

  -- Clever F
  -- https://github.com/rhysd/clever-f.vim
  use 'rhysd/clever-f.vim'

  -- FZF
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  --
  -- Rooter
  -- https://github.com/airblade/vim-rooter
  use 'airblade/vim-rooter'

  -- NerdTree
  -- https://github.com/preservim/nerdtree
  use 'scrooloose/nerdtree'

  -- Repeat
  -- https://github.com/tpope/vim-repeat
  use 'tpope/vim-repeat'

  --
  -- Advanced Config
  --

  -- Indent Blankline: Add indentation guides, even on blank lines
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  use 'lukas-reineke/indent-blankline.nvim'

  -- Comment: Plugin for commenting code
  -- https://github.com/numToStr/Comment.nvim
  use 'numToStr/Comment.nvim'

  -- Vim Sleuth: Detect tabstop and shiftwidth automatically
  -- https://github.com/tpope/vim-sleuth
  use 'tpope/vim-sleuth'

  -- Autopairs: Autopair plugin for nvim (automatically adds closing brackets, for instance)
  -- https://github.com/windwp/nvim-autopairs
  use 'windwp/nvim-autopairs'

  -- TS AutoTag: Use treesitter to autoclose and autorename html tag
  -- https://github.com/windwp/nvim-ts-autotag
  use 'windwp/nvim-ts-autotag'

  -- Eunuch: Vim plugin for UNIX commands
  -- https://github.com/tpope/vim-eunuch
  use 'tpope/vim-eunuch'

  -- To Do Comments: Highlight TODO, FIXME, etc in comments
  --https://github.com/folke/todo-comments.nvim
  use 'folke/todo-comments.nvim'

  -- WhichKey: Vim plugin that displays a popup with possible keybindings of the command you started typing
  -- https://github.com/folke/which-key.nvim
  use 'folke/which-key.nvim'

  --
  -- Git
  --

  -- Fugitive: Git integration
  -- https://github.com/tpope/vim-fugitive
  use 'tpope/vim-fugitive'

  -- Vim Rhubarb: GitHub integration
  -- https://github.com/tpope/vim-rhubarb
  use 'tpope/vim-rhubarb'

  -- Git Signs: Plugin for adding git signs in nvim
  -- https://github.com/lewis6991/gitsigns.nvim
  use 'lewis6991/gitsigns.nvim'

  --
  -- AESTHETIC
  --

  -- Nord
  --https://github.com/arcticicestudio/nord-vim
  use 'arcticicestudio/nord-vim'

  -- Lualine
  -- https://github.com/nvim-lualine/lualine.nvim
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Tabline
  -- https://github.com/kdheepak/tabline.nvim
  use 'kdheepak/tabline.nvim'

  --
  -- LSP / COMPLETION / SNIPPETS
  --
  use { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    requires = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',

      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      'j-hui/fidget.nvim',

      -- Additional lua configuration, makes nvim stuff amazing
      'folke/neodev.nvim',
    },
  }

  use { -- Autocompletion
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      "rafamadriz/friendly-snippets",
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline'
    },
  }

  --use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  --use 'glepnir/lspsaga.nvim' -- LSP UIs

  use { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }

  use { -- Additional text objects via treesitter
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  }

  --
  -- Copiilot
  --
  use 'github/copilot.vim'

  --
  -- ChatGPT
  --
  use {
    'jackMort/ChatGPT.nvim',
    requires = {
      'MunifTanjim/nui.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
  }

  --
  -- TELESCOPE
  --
  -- Fuzzy Finder (files, lsp, etc)
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

  --use { -- Additional telescope extensions
  --'nvim-telescope/telescope-frecency.nvim',
  --requires = { 'tami5/sql.nvim' },
  --}
  use 'BurntSushi/ripgrep'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'folke/trouble.nvim'

  --
  -- Formatting
  --

  use "mhartington/formatter.nvim"

  --
  -- LANGUAGE SPECIFIC
  --

  -- Emmet
  -- https://github.com/mattn/emmet-vim
  use 'mattn/emmet-vim'

  -- Vim Polyglot
  -- https://github.com/sheerun/vim-polyglot
  use 'sheerun/vim-polyglot'

  -- Vim JavaScript
  -- https://github.com/pangloss/vim-javascript
  use 'pangloss/vim-javascript'

  -- Vim JSX
  -- https://github.com/MaxMEllon/vim-jsx-pretty
  use 'maxmellon/vim-jsx-pretty'

  -- Prettier
  --use {
  --'MunifTanjim/prettier.nvim', -- Prettier plugin for Neovim's built-in LSP client
  --requires = { {
  --'jose-elias-alvarez/null-ls.nvim'
  --} }
  --}

  -- Vim GraphQL
  -- https://github.com/jparise/vim-graphql
  use 'jparise/vim-graphql'

  -- Vim Solidity
  -- https://github.com/tomlion/vim-solidity
  use 'tomlion/vim-solidity'

  -- Vim Vyper
  -- https://github.com/vyperlang/vim-vyper
  use 'vyperlang/vim-vyper'

  -- Vim Prisma
  -- https://github.com/pantharshit00/vim-prisma
  use 'pantharshit00/vim-prisma'

  --
  -- WRITING
  ---

  -- Vim Wiki
  -- https://github.com/vimwiki/vimwiki
  use 'vimwiki/vimwiki'

  -- Goyo
  -- https://github.com/junegunn/goyo.vim
  use 'junegunn/goyo.vim'

end)
