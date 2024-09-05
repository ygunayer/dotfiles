#!/usr/bin/env sh

# Configure Neovim
mkdir -p ~/.config
ln -s $(pwd)/nvim ~/.config/nvim

# Configure tmux
cp .tmux.conf ~/.tmux.conf

