set nocompatible
syntax on

set autoindent
set ruler
set showcmd
set showmatch
set hlsearch
set incsearch

" switch window
map <C-h> <ESC><C-W>h
map <C-j> <ESC><C-W>j
map <C-k> <ESC><C-W>k
map <C-l> <ESC><C-W>l

" autocmd
autocmd FileType python tabstop=4 | set shiftwidth=4 | set softtabstop=4
autocmd FileType html set tabstop=2 | set shiftwidth=2 | set softtabstop=2
autocmd FileType ruby set tabstop=2 | set shiftwidth=2 | set softtabstop=2

" run it
map <F5> <ESC>:w<CR>:!python %<CR>

" pathogen
call pathogen#infect()

" nerdtree
map <F3> <ESC>:NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>

" taglist
map <F4> <ESC>:TlistToggle<CR>
imap <F4> <ESC>:TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Use_SingleClick = 1
