local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end


packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  --
  -- BASIC CONFIG
  --

  -- Vim Sensible
  -- https://github.com/tpope/vim-sensible
  use 'tpope/vim-sensible'

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

  -- Surround
  -- https://github.com/tpope/vim-surround
  use 'tpope/vim-surround'

  -- Clever F
  -- https://github.com/rhysd/clever-f.vim
  use 'rhysd/clever-f.vim'

  -- Fugitive (Git integration)
  -- https://github.com/tpope/vim-fugitive
  use 'tpope/vim-fugitive'

  -- Ale
  -- https://github.com/dense-analysis/ale
  use 'w0rp/ale'

  -- NerdCommenter
  -- https://github.com/preservim/nerdcommenter
  use 'scrooloose/nerdcommenter'

  -- Ctrl P
  -- https://github.com/kien/ctrlp.vim
  use 'kien/ctrlp.vim'

  -- Autopairs
  -- https://github.com/jiangmiao/auto-pairs
  --use 'jiangmiao/auto-pairs'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  --
  -- AESTHETIC
  --

  -- Nord
  -- https://github.com/arcticicestudio/nord-vim
  use 'shaunsingh/nord.nvim'

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

  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP

  --use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  --use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  --
  -- TELESCOPE
  --
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {
      'nvim-lua/plenary.nvim'
    } }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'BurntSushi/ripgrep'

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
  use {
    'MunifTanjim/prettier.nvim', -- Prettier plugin for Neovim's built-in LSP client
    requires = { {
      'jose-elias-alvarez/null-ls.nvim'
    } }
  }

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

  -- Vim Zettel
  -- https://github.com/michal-h21/vim-zettel
  use 'michal-h21/vim-zettel'

end)
