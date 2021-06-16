#!/usr/bin/env bash

# Setup
echo "DOTFILES: Setup"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Bash
echo "DOTFILES: Bash"
ln -sf $DIR/.bashrc $HOME

# Prompt
echo "DOTFILES: Prompt"
ln -sf $DIR/.prompt $HOME

# Git
echo "DOTFILES: Git"
ln -sf $DIR/.gitconfig $HOME

# VSCode
echo "DOTFILES: Vscode"
mkdir -p $HOME/.config/Code/User
ln -sf $DIR/vscode-settings.json $HOME/.config/Code/User

source $HOME/.bashrc
source $HOME/.prompt