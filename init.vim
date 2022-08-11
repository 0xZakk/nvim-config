set nocompatible  " Must come first because it changes other options.
filetype plugin on
syntax on

call plug#begin('~/.config/nvim/plugged')

" Vim Sensible
" https://github.com/tpope/vim-sensible
Plug 'tpope/vim-sensible'

" Vim Polyglot
" https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'

" Rooter
" https://github.com/airblade/vim-rooter
Plug 'airblade/vim-rooter'

" NerdTree
" https://github.com/preservim/nerdtree
Plug 'scrooloose/nerdtree'

" Nord
" https://github.com/arcticicestudio/nord-vim
Plug 'arcticicestudio/nord-vim'

" Surround
" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" Lightline
" https://github.com/itchyny/lightline.vim#introduction
Plug 'itchyny/lightline.vim'

" Conquer of Completion
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Ale
" https://github.com/dense-analysis/ale
Plug 'w0rp/ale'

" UltiSnips
" https://github.com/SirVer/ultisnips
"Plug 'SirVer/ultisnips'

" Vim Snippets
" https://github.com/honza/vim-snippets
Plug 'honza/vim-snippets'

" NerdCommenter
" https://github.com/preservim/nerdcommenter
Plug 'scrooloose/nerdcommenter'

" Clever F
" https://github.com/rhysd/clever-f.vim
Plug 'rhysd/clever-f.vim'

" Fugitive (Git integration)
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" Ctrl P
" https://github.com/kien/ctrlp.vim
Plug 'kien/ctrlp.vim'

" Autopairs
" https://github.com/jiangmiao/auto-pairs
Plug 'jiangmiao/auto-pairs'

" Autoformat
" https://github.com/vim-autoformat/vim-autoformat
Plug 'Chiel92/vim-autoformat'

" Emmet
" https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'

" Vim JavaScript
" https://github.com/pangloss/vim-javascript
Plug 'pangloss/vim-javascript'

" Vim JSX
" https://github.com/MaxMEllon/vim-jsx-pretty
Plug 'maxmellon/vim-jsx-pretty'

" Prettier
" https://github.com/prettier/vim-prettier
"Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['javascript', 'css', 'scss', 'json', 'typescript', 'html', 'markdown', 'solidity', 'graphql'] }
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" Vim GraphQL
" https://github.com/jparise/vim-graphql
Plug 'jparise/vim-graphql'

" Vim Solidity
" https://github.com/tomlion/vim-solidity
Plug 'tomlion/vim-solidity'

" Vim Vyper
" https://github.com/vyperlang/vim-vyper
Plug 'vyperlang/vim-vyper'

" Vim Prisma
" https://github.com/pantharshit00/vim-prisma
Plug 'pantharshit00/vim-prisma'

" Vim Wiki
" https://github.com/vimwiki/vimwiki
Plug 'vimwiki/vimwiki'

" Goyo
" https://github.com/junegunn/goyo.vim
Plug 'junegunn/goyo.vim'

" FZF
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Vim Zettel
" https://github.com/michal-h21/vim-zettel
Plug 'michal-h21/vim-zettel'

call plug#end()
