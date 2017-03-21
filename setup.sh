#!/bin/bash

printf "\n[Basics]...\n"
mkdir ~/git
cd ~/git && git clone git@github.com:Apercu/.files.git
cd ~

printf "\n[NVim]...\n"

mkdir -p ~/.config/nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

printf "\n[OMZSH]...\n"

curl -L http://install.ohmyz.sh | sh
rm .zshrc

printf "\n[Creating Symlinks & Copy]...\n"

/bin/ln -s git/.files/.profile
/bin/ln -s git/.files/.zshrc
/bin/ln -s git/.files/.tigrc
/bin/ln -s git/.files/.gitprompt
/bin/ln -s git/.files/.gitconfig
/bin/ln -s git/.files/init.vim ~/.config/nvim/init.vim
