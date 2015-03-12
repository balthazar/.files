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
/bin/ln -s git/my-awesome-config/.profile
/bin/ln -s git/my-awesome-config/.vimrc
/bin/ln -s git/my-awesome-config/.zshrc
/bin/ln -s git/my-awesome-config/.tigrc
/bin/ln -s git/my-awesome-config/.gitprompt
/bin/ln -s git/my-awesome-config/.gitconfig

printf "\n[Installing NPM]...\n"

if [[ `uname` == 'Darwin' ]]; then
  mkdir ~/node-latest-install
  cd ~/node-latest-install
  curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
  ./configure --prefix=~/local
  make install
  curl https://www.npmjs.org/install.sh | sh
  rm -rf ~/node-latest-install
else
  sudo pacman -S nodejs
fi

npm install -g bower
npm install -g gulp
