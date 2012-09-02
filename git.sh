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

# sync taglist.vim
sync_plugin taglist.vim git://github.com/vim-scripts/taglist.vim.git

# sync tabular
sync_plugin tabular git://github.com/godlygeek/tabular.git

# sync snipmate.vim
sync_plugin snipmate.vim git://github.com/parisyy/snipmate.vim.git
