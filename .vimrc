set nocompatible
syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4

set hlsearch
set incsearch
set ignorecase

set number
set autoindent
set ruler
set showmode
set showcmd
set showmatch

set noerrorbells
set laststatus=2
set scrolloff=5

set t_Co=256
set cursorline

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" ============================================================================
" Common Plugins
" ============================================================================

filetype on
filetype plugin indent on

" pathogen
call pathogen#infect()

" nerdtree
nmap <F3> <ESC>:NERDTreeToggle<CR>
" close vim if the only window left open is a nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" open a nerdtree automatically when vim starts up whith no file specified
autocmd vimenter * if !argc() | NERDTreeToggle | endif

" tagbar
nmap <F4> <ESC>:TagbarToggle<CR>

" ============================================================================
" Python Plugins
" ============================================================================

" settings
if (has("autocmd"))
	autocmd filetype python set expandtab | retab
endif

" switch to shell
autocmd FileType python map <F5> <ESC>:w<CR>:shell<CR>

" colorcheme
colorscheme Tomorrow-Night-Bright

" flake8
autocmd FileType python map <buffer> <F8> :call Flake8()<CR>
" add builtins
let g:flake8_builtins="_,apply"
" ignore errors
let g:flake8_ignore="E501,W293,E128"
" change the max line length for PEP8
let g:flake8_max_line_length=99
" set the maximum McCache complexity before a warning is issued
let g:flake8_max_complexity=10
" check everytime when you save a python file
autocmd BufWritePost *.py call Flake8()
" add the path to flake8
let g:flake8_cmd="/usr/local/bin/flake8"

" ============================================================================
" HTML Plugins
" ============================================================================

autocmd FileType html,xhtml,htmldjango set tabstop=2 | set shiftwidth=2 | set softtabstop=2

" ============================================================================
" C/C++ Plugins
" ============================================================================
