set nocompatible
syntax on
set nu
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
set cursorline
set noerrorbells
set laststatus=2

" switch window
map <C-h> <ESC><C-W>h
map <C-j> <ESC><C-W>j
map <C-k> <ESC><C-W>k
map <C-l> <ESC><C-W>l

" autocmd
filetype on
autocmd BufWrite *.py %retab
autocmd FileType html,xhtml,htmldjango set tabstop=2 | set shiftwidth=2 | set softtabstop=2
autocmd FileType * set tabstop=4 | set shiftwidth=4 | set softtabstop=4

" set expandtab for python
autocmd FileType python set expandtab

" run it
autocmd FileType python map <F5> <ESC>:w<CR>:!python %<CR>

" pathogen
call pathogen#infect()

" nerdtree
map <F3> <ESC>:NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>

" tagbar
map <F4> <ESC>:TagbarToggle<CR>

" colorscheme: tomorrow night bright
colorscheme Tomorrow-Night-Bright
