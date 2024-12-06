#!/bin/bash

mkdir -p ~/.emacs.d/
cp -u emacs.d/init.el ~/.emacs.d/init.el

##
# Setup git
git config --global core.editor "vim"
git config --global user.email "mark.lee.hamilton@gmail.com"
git config --global user.name "Mark Hamilton"
##


sudo apt-get update 
##
# install editors.
sudo apt install emacs vim
##
sudo apt-get install -y make build-essential

##
# Setup pyenv
sudo apt install -y make libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
curl https://pyenv.run | bash
pyenv install 3.7.17
pyenv global 3.7.17
##

##
# Setup docker
sudo apt install -y curl apt-transport-https ca-certificates software-properties-common 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install -y docker-ce 
sudo usermod -aG docker $USER
##
