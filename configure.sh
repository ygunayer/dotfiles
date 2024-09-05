#!/usr/bin/env sh

mkdir -p ~/.config

# Configure Neovim
if [ -d ~/.config/nvim ]; then
  echo "[SKIP] Neovim"
elif [ -f ~/.config/nvim ]; then
  echo "[WARN] A file exists in the Neovim config path, please check ~/.config/nvim"
else
  ln -s $(pwd)/nvim ~/.config/nvim
  echo "[OK] Neovim"
fi

# Configure tmux
if [ -f ~/.tmux.conf ]; then
  echo "[SKIP] tmux"
else
  cp .tmux.conf ~/.tmux.conf
  echo "[OK] tmux"
fi

