#!/bin/bash

printf "\n[Basics]...\n"
mkdir ~/git
mkdir ~/.vim
mkdir ~/.vim/bundle
mkdir ~/.vim/bundle/ultisnips
cd ~/git
git clone git@github.com:Apercu/myawesome-config.git
cd ~
touch .nossh

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
cp ~/git/my-awesome-config/Meslo\ LG\ S\ Regular\ for\ Powerline.otf ~/Library/Fonts
cp ~/git/my-awesome-config/com.googlecode.iterm2.plist ~/Library/Preferences
cp -r ~/git/my-awesome-config/Ultisnips ~/.vim/bundle/ultisnips

printf "\n[Installing GitFlow]...\n"

cd /tmp
git clone --recursive git://github.com/nvie/gitflow.git
cd gitflow
mkdir ~/local
make prefix=$HOME/local install

printf "\n[Installing NPM]...\n"

mkdir ~/node-latest-install
cd ~/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=~/local
make install
curl https://www.npmjs.org/install.sh | sh
rm -rf ~/node-latest-install
npm install -g grunt-cli
npm install -g bower
npm install -g gulp

printf "\n[Brews & Gems]\n"
brew update
brew install tig
brew install wget
brew install ruby
gem install sass
gem install compass --pre
