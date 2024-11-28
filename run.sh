#!/bin/bash

mkdir -p ~/.emacs.d/
cp -u emacs.d/init.el ~/.emacs.d/init.el

git config --global core.editor "vim"

sudo apt install emacs vim
