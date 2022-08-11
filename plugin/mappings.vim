" Mappings
" Vim mappings
inoremap jk <esc>
nnoremap ; :
nnoremap : <nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
let mapleader = " "
nmap <silent> <leader>ev :e ~/.vim/vimrc<CR>
nmap <silent> <leader>sv :source ~/.vim/vimrc<CR>
vnoremap <leader>c "*y

" Window mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" vv - Makes a vertical split
map vv <C-W>v

" ss - Makes a horizontal split
map ss <C-W>s

" Buffer Mappings
nnoremap <leader>p :bp<cr>
nnoremap <leader>n :bn<cr>
nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Custom Shortcuts
nnoremap <leader>ga :Git add<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gl :Git log<cr>
nnoremap <leader>gd :Git diff<cr>
nnoremap <leader>kb :NERDTreeToggle<CR>
"
" typing $e in the command line expands to `:e ` + the current path, making
" https://github.com/statico/dotfiles/blob/master/.vim/vimrc#L142-L145
" it easy to create a file in the same directory as the current file.
cnoremap $e e <C-\>eCurrentFileDir()<CR>
function! CurrentFileDir()
  return "e " . expand("%:p:h") . "/"
endfunction
