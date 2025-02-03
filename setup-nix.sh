# 1. make sure to install Nix first
sh <(curl -L https://nixos.org/nix/install)

# verify that Nix is installed
nix-shell -p neofetch --run neofetch


# install nix-darwin
nix flake init -t nix-darwin --extra-experimental-features "nix-command flakes"

# configure nix-darwin
nix run nix-darwin --extra-experimental-features "nix-command flakes" -- switch --flake ~/.config/nix#silicon

# restart shell, and then run the following to verify
which darwin-rebuild

