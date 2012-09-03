set nocompatible
syntax on
set autoindent
set ruler
set showcmd
set showmatch
set hlsearch
set incsearch
set textwidth=78

" switch window
map <C-h> <ESC><C-W>h
map <C-j> <ESC><C-W>j
map <C-k> <ESC><C-W>k
map <C-l> <ESC><C-W>l

" autocmd
filetype on
autocmd FileType * set tabstop=4|set shiftwidth=4
autocmd FileType xhtml set tabstop=2|set shiftwidth=2

" run it
map <F5> <ESC>:w<CR>:!python %<CR>

" pathogen
call pathogen#infect()

" nerdtree
map <F3> <ESC>:NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>

" tagbar
map <F4> <ESC>:TagbarToggle<CR>
imap <F4> <ESC>:TagbarToggle<CR>
