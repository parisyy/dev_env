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

# sync tomorrow-theme
sync_plugin tomorrow-theme git://github.com/chriskempson/tomorrow-theme.git
cd ~/.vim/bundle/tomorrow-theme && cp -rv vim/colors . && cd -

# sync flake8
# easy_install flake8
sync_plugin vim-flake8 git://github.com/nvie/vim-flake8.git

#sync_plugin vim-jade https://github.com/digitaltoad/vim-jade.git
#sync_plugin vim-indent-guides git://github.com/nathanaelkane/vim-indent-guides.git

sync_plugin nginx-vim-syntax git://github.com/andersjanmyr/nginx-vim-syntax.git

sync_plugin vim-kolor git://github.com/zeis/vim-kolor.git
