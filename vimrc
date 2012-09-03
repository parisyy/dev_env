set nocompatible
syntax on
set encoding=utf-8
set t_Co=256
set autoindent
set ruler
set showcmd
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set textwidth=78
set nowrap
set cursorline
set noerrorbells

" switch window
map <C-h> <ESC><C-W>h
map <C-j> <ESC><C-W>j
map <C-k> <ESC><C-W>k
map <C-l> <ESC><C-W>l

" autocmd
filetype on
:autocmd BufWrite *.py %retab

" run it
map <F5> <ESC>:w<CR>:!python %<CR>

" pathogen
call pathogen#infect()
call pathogen#runtime_append_all_bundles()

" nerdtree
map <F3> <ESC>:NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>

" tagbar
map <F4> <ESC>:TagbarToggle<CR>

" power-line
set laststatus=2
let g:Powerline_symbols = 'compatible'

" tomorrow-theme
colorscheme Tomorrow-Night-Bright

" python-mode
let g:pymode_folding = 0
