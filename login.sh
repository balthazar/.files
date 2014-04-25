#!/bin/bash

mkdir ~/git
cd ~/git
git clone git@github.com:Apercu/myawesome-config.git
cd ~

printf "\n[Creating Symlinks & Configs]...\n"
/bin/ln -s git/my-awesome-config/.profile
/bin/ln -s git/my-awesome-config/.vimrc
/bin/ln -s git/my-awesome-config/.zshrc
/bin/ln -s git/my-awesome-config/.tigrc
cp ~/git/my-awesome-config/Meslo\ LG\ S\ Regular\ for\ Powerline.otf ~/Library/Fonts
cp ~/git/my-awesome-config/com.googlecode.iterm2.plist ~/Library/Preferences
curl -L http://install.ohmyz.sh | sh

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

printf "\n[Brews & Gems]\n"
brew install tig
brew install wget
brew install ruby
gem install compass
