#!/usr/bin/env bash

# Setup
echo "DOTFILES: Setup"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Env
echo "DOTFILES: Env"
source $DIR/env.sh

# Bash
echo "DOTFILES: Bash"
source $DIR/bash.sh

# Prompt
echo "DOTFILES: Prompt"
source $DIR/prompt.sh

# Git
echo "DOTFILES: Git"
ln -sf $DIR/.gitconfig $HOME

# GO
echo "DOTFILES: Go"
source $DIR/go.sh

# VSCode
echo "DOTFILES: Vscode"
mkdir -p $HOME/.config/Code/User
ln -sf $DIR/vscode-settings.json $HOME/.config/Code/User