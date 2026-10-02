#!/usr/bin/env bash

# setup failure handling
# -e          := stop if a cmd fails
# -u          := stop if an undefined variable is used
# -o pipefail := make pipeline fail if any cmd fails
set -euo pipefail

# privilege handling
if [[ $EUID -eq 0 ]]; then
    SUDO=""
else
    # sudo cmd doesnt exist for some reason...
    if ! command -v sudo >/dev/null 2>&1; then
        echo "sudo is required when not running as root"
        exit 1
    fi

    SUDO="sudo"
fi

# detect package manager
if command -v apt-get >/dev/null 2>&1; then
    PACKMAN="apt"
    $SUDO apt-get update
elif command -v dnf >/dev/null 2>&1; then
    PACKMAN="dnf"
else
    echo "could not detect package manager, aborting"
    exit 1
fi

# package manager and user agnostic way to install packages
install_packages() {
    case "$PACKMAN" in
    apt)
        $SUDO apt-get install -y "$@"
        ;;
    dnf)
        $SUDO dnf install -y "$@"
        ;;
    esac
}

# packages
if [[ "$PACKMAN" == "apt" ]]; then
    install_packages git stow neovim zsh fd-find ripgrep curl tmux
else
    install_packages git stow neovim zsh fd-find ripgrep curl tmux
fi

# install oh my zsh
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
    RUNZSH=no CHSH=no \
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# install p10k
P10K_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

if [[ ! -d "$P10K_DIR" ]]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"
fi

# dotfiles
cd "$HOME/dotfiles"

stow git nvim p10k tmux zsh

echo "setup complete"
