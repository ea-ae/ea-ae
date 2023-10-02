#!/bin/bash

cp ~/.bashrc ./.bashrc
cp ~/.gitconfig ./.gitconfig

cp ~/.config/nvim/init.vim ./init.vim
cp ~/.vimrc ./.vimrc 

cp ${APPDATA}/Code/User/settings.json ./vscode/settings.jsonc
cp ${APPDATA}/Code/User/keybindings.json ./vscode/keybindings.jsonc

