#!/usr/bin/env bash

function sync_plugin()
{
	if [ -d ~/.vim/bundle/$1 ]; then
		cd ~/.vim/bundle/$1 && git pull && cd -
	else
		cd ~/.vim/bundle && git clone $2 $1 && cd -
	fi
}

# sync pathogen
if [ -d ~/.vim/bundle ]; then
	cd ~/.vim && git pull && cd -
else
	mkdir -pv ~/.vim && git clone git://github.com/tpope/vim-pathogen.git ~/.vim && mkdir -pv ~/.vim/bundle
fi
sleep 5

# sync nerdtree
sync_plugin nerdtree git://github.com/scrooloose/nerdtree.git

# sync tabular
sync_plugin tabular git://github.com/godlygeek/tabular.git

# sync snipmate.vim
sync_plugin snipmate.vim git://github.com/parisyy/snipmate.vim.git

# sync vim-less
sync_plugin vim-less git://github.com/groenewege/vim-less.git

# sync tagbar
sync_plugin tagbar git://github.com/majutsushi/tagbar.git

# sync numbers
sync_plugin numbers git://github.com/myusuf3/numbers.vim.git

# sync supertab
sync_plugin supertab git://github.com/ervandew/supertab.git

# sync tomorrow-theme
sync_plugin tomorrow-theme git://github.com/chriskempson/tomorrow-theme.git
cd ~/.vim/bundle/tomorrow-theme && cp -r vim/colors . && cd -

# sync vim-powerline
sync_plugin vim-powerline git://github.com/Lokaltog/vim-powerline.git

# sync python-mode
sync_plugin python-mode git://github.com/klen/python-mode.git
