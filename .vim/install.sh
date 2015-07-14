#! /usr/bin/env bash

ln -s ~/initMacOS/.vim/.vimrc ~/.vimrc
ln -s ~/initMacOS/.vim/.vimrc.local ~/.vimrc.local

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +BundleInstall +qall!

