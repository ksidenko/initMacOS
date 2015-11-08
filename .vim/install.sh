#! /usr/bin/env bash
#echo $(pwd)
#path=$(pwd)"/"
#mkdir -p ~/.vim/

#ln -s "$path".vimrc ~/.vimrc
#ln -s "$path".vimrc.local ~/.vimrc.local
#ln -s "$path".vimrc.before.local ~/.vimrc.before.local
#ln -s "$path".vimrc.bundles.local ~/.vimrc.bundles.local

#rm -rf "$path"bundle/Vundle.vim
#git clone https://github.com/gmarik/Vundle.vim.git "$path"bundle/Vundle.vim
#ln -s "$path"bundle/ ~/.vim/bundle

#vim +BundleInstall +qall!

curl https://raw.githubusercontent.com/ksidenko/spf13-vim/3.0-new/bootstrap.sh -L > spf13-vim.sh && sh spf13-vim.sh
