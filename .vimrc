let mapleader = " "
" Enable line numbers
set number
set relativenumber

" Enable syntax highlighting
syntax on

" Set indentation
set tabstop=4       " Number of spaces a tab counts for
set shiftwidth=4    " Number of spaces to use for autoindent
set expandtab       " Convert tabs to spaces
set smartindent     " Smart autoindenting on new lines

" Enable line wrapping
set wrap

" Highlight search results
set hlsearch
set incsearch       " Search as you type

" Case-insensitive searching
set ignorecase
set smartcase       " Override ignorecase if capital letter is used

" Enable mouse support
set mouse=a

" Show matching brackets
set showmatch

" Enable persistent undo
set undofile

" Show line and column number
set ruler

nnoremap <leader>pv :Ex<CR>
" Move selected lines down with Shift+J
vnoremap J :m '>+1<CR>gv=gv

" Move selected lines up with Shift+K
vnoremap K :m '<-2<CR>gv=gv
vnoremap <leader>y "+y