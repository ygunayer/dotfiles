#!/usr/bin/env sh

mkdir -p ~/.config

install_folder_link() {
  NAME="$1"
  FROM=$(pwd)/$2
  TO="$3"

  if [ -d $TO ]; then
    echo "[SKIP] $NAME already installed at $TO"
  elif [ -f $TO ]; then
    echo "[WARN] A file exists in the $NAME config path, please check $TO"
  else
    ln -s $FROM $TO
    echo "[OK] $NAME installed at $TO"
  fi
}

install_folder_link "Neovim" nvim ~/.config/nvim

SKIP_EMACS=1
if [ -d ~/.emacs.d ] || [ -d ~/.emacs ]; then
  echo "An Emacs folder exists at ~/.emacs or ~/.emacs.d"
  read -p "Do you wish to remove these folders? Otherwise Emacs config will not be installed (y/N) " -n 1 -r
  echo ""

  if [[ $REPLY =~ ^[Yy]$ ]]; then
    rm -rf ~/.emacs ~/.emacs.d
    echo "Removed ~/.emacs and ~/.emacs.d folders"
  fi
fi

if [ $SKIP_EMACS -eq 0 ]; then
  install_folder_link "Emacs" emacs ~/.config/emacs
fi

#install_folder_link "Nix" nix ~/.config/nix
# rsync ./nix ~/.config

# Configure tmux
if [ -f ~/.tmux.conf ]; then
  echo "[SKIP] tmux"
else
  cp .tmux.conf ~/.tmux.conf
  echo "[OK] tmux"
fi

