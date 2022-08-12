local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

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

-- Nord
-- https://github.com/arcticicestudio/nord-vim
  use 'shaunsingh/nord.nvim'


-- Surround
-- https://github.com/tpope/vim-surround
  use 'tpope/vim-surround'

-- Lualine
-- https://github.com/nvim-lualine/lualine.nvim
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

-- Lightline
-- https://github.com/itchyny/lightline.vim#introduction
  use 'itchyny/lightline.vim'

-- Clever F
-- https://github.com/rhysd/clever-f.vim
  use 'rhysd/clever-f.vim'

-- Fugitive (Git integration)
-- https://github.com/tpope/vim-fugitive
  use 'tpope/vim-fugitive'

-- Ale
-- https://github.com/dense-analysis/ale
  use 'w0rp/ale'

-- Vim Snippets
-- https://github.com/honza/vim-snippets
  use 'honza/vim-snippets'

-- NerdCommenter
-- https://github.com/preservim/nerdcommenter
  use 'scrooloose/nerdcommenter'

-- Ctrl P
-- https://github.com/kien/ctrlp.vim
  use 'kien/ctrlp.vim'

-- Autopairs
-- https://github.com/jiangmiao/auto-pairs
  use 'jiangmiao/auto-pairs'

-- Emmet
-- https://github.com/mattn/emmet-vim
  use 'mattn/emmet-vim'

-- Vim Polyglot
-- https://github.com/sheerun/vim-polyglot
  use 'sheerun/vim-polyglot'

--
-- LANGUAGE SPECIFIC
--

-- Vim JavaScript
-- https://github.com/pangloss/vim-javascript
  use 'pangloss/vim-javascript'

-- Vim JSX
-- https://github.com/MaxMEllon/vim-jsx-pretty
  use 'maxmellon/vim-jsx-pretty'

-- Prettier
-- https://github.com/prettier/vim-prettier
  use {
    'prettier/vim-prettier',
    run = 'yarn install --frozen-lockfile --production'
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
