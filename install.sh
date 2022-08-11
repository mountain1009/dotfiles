#!/bin/bash

DOT_DIR="$HOME/dotfiles"

# clone
git clone https://github.com/mountain1009/dotfiles.git ${DOT_DIR}

# link
ln -svf $DOT_DIR/nvim ~/.config
ln -svf $DOT_DIR/zsh/.zshrc ~/
ln -svf $DOT_DIR/homebrew/Brewfile ~/