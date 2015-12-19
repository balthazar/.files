#!/bin/bash

printf "\n[Basics]...\n"
mkdir ~/git
mkdir ~/.vim
cd ~/git
git clone git@github.com:Apercu/.files.git
cd ~

printf "\n[Vim]...\n"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

printf "\n[Creating Symlinks & Copy]...\n"

curl -L http://install.ohmyz.sh | sh
rm .zshrc
/bin/ln -s git/.files/.profile
/bin/ln -s git/.files/.vimrc
/bin/ln -s git/.files/.zshrc
/bin/ln -s git/.files/.tigrc
/bin/ln -s git/.files/.gitprompt
/bin/ln -s git/.files/.gitconfig
