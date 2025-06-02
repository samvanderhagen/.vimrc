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

if &term =~ '^xterm\|rxvt'
    " solid underscore
    let &t_SI .= "\<Esc>[4 q"
    " solid block
    let &t_EI .= "\<Esc>[2 q"
    " 1 or 0 -> blinking block
    " 3 -> blinking underscore
    " Recent versions of xterm (282 or above) also support
    " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
endif
if &term =~ "xterm"
    let &t_SI = "\<Esc>[6 q"
    let &t_SR = "\<Esc>[4 q"
    let &t_EI = "\<Esc>[2 q"
endif
