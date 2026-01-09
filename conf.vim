set nocompatible  " Must come first because it changes other options.
filetype plugin on
syntax on

" Basic
" Sets the default encoding
set encoding=utf-8
" Display incomplete commands.
set showcmd
" Give more space for displaying messages.
set cmdheight=2
" Handle multiple buffers better.
set hidden
" Enhanced command line completion.
set wildmenu
" Complete files like a shell.
set wildmode=list:longest
" Show 5 lines of context around the cursor.
set scrolloff=5
" Set the terminal's title
set title
" Don't make a backup before overwriting a file.
set nobackup
" And again.
set nowritebackup
" don't keep swap files
set noswapfile

" Line numbers - both for relative with absolute on current line
set number
set relativenumber

" Always show sign column (padding on left for git signs, diagnostics, etc.)
set signcolumn=yes

" don't show the tab bar
set showtabline=2

" Split to right by default
set splitright

" automatically detect & change working dir
set autochdir

" automatically reload file when it changes
set autoread

" make update time short and fast.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


" disable both bell and flash on errors
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Search
" Case-insensitive searching.
set ignorecase
" But case-sensitive if expression contains a capital letter.
set smartcase
" Highlight matches as you type.
set incsearch
" Highlight matches.
set hlsearch
" Show matching brackets
set showmatch
" search & replace globablly  by default
set gdefault


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

" Make border line between windows visible
let g:nord_borders = v:true

" Folding
set foldmethod=indent
set foldlevel=1
set foldopen-=block

" FZF
set rtp+=/opt/homebrew/opt/fzf
