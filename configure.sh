#!/usr/bin/env sh
mkdir -p ~/.config/alacritty

cp .tmux.conf ~/.tmux.conf
cp alacritty.yml ~/.config/alacritty/alacritty.yml

echo "\r\n$(cat .zhrc)" >> ~/.zshrc
