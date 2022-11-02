set nocompatible  " Must come first because it changes other options.
filetype plugin on
syntax on

" Basic
set encoding=utf-8                " Sets the default encoding
set showcmd                       " Display incomplete commands.
set cmdheight=2                   " Give more space for displaying messages.
set hidden                        " Handle multiple buffers better.
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set scrolloff=5                   " Show 5 lines of context around the cursor.
set title                         " Set the terminal's title
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set noswapfile                    " don't keep swap files
set nonumber                      " No line numbering
set relativenumber                " numbers are relative to current line.
set showtabline=2                 " don't show the tab bar
set splitright                    " Split to right by default
set autochdir                     " automatically detect & change working dir
set autoread                      " automatically reload file when it changes
set updatetime=300                " make update time short and fast.
set shortmess+=c                  " Don't pass messages to |ins-completion-menu|.

" disable both bell and flash on errors
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Search
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set showmatch                     " Show matching brackets
set gdefault                      " search & replace globablly  by default

" Text
set list
set listchars=tab:»-,trail:·,eol:¬ " show tab, eol and trailing spaces
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set shiftround                   " round spacing to shiftwidth
set expandtab                    " Use spaces instead of tabs
set autoindent                   " automatically indent on <Enter>
set smarttab                     " us spaces when hitting <Tab>
set wrap                         "
set linebreak                    " wrap long lines automatically
set breakindent                  " Visually wrap lines without adding EOL
set textwidth=80                 " character limit for wrap
set smartindent                  " smart indenting
set formatoptions+=qrn1          " reformatting options
set spell

" Styles & Colors
set t_Co=256
colorscheme nord

" Folding
set foldmethod=indent
set foldlevel=1

" FZF
set rtp+=/opt/homebrew/opt/fzf
