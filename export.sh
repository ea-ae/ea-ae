#!/bin/bash

cp ~/.bashrc ./.bashrc
cp ~/.gitconfig ./.gitconfig

cp ~/.config/nvim/init.vim ./vim/init.vim
cp ~/.vimrc ./vim/.vimrc 

cp ${APPDATA}/Code/User/settings.json ./vscode/vscode.settings.jsonc
cp ${APPDATA}/Code/User/keybindings.json ./vscode/vscode.keybindings.jsonc

