#!/usr/bin/env bash

$DOTFILES="$HOME/.dotfiles"

# shell
ln -sf $DOTFILES/aliases $HOME/.aliases
ln -sf $DOTFILES/exports $HOME/.exports

# bash
ln -sf $DOTFILES/bash_profile $HOME/.bash_profile

# zsh
ln -sf $DOTFILES/zshenv $HOME/.zshenv
ln -sf $DOTFILES/zshrc $HOME/.zshrc
ln -sf $DOTFILES/zsh/ $HOME/.zsh

# git
ln -sf $DOTFILES/git/gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/git/gitignore $HOME/.gitignore

# vim
ln -sf $DOTFILES/vimrc $HOME/.vimrc
ln -sf $DOTFILES/vimrc.bundles $HOME/.vimrc.bundles
ln -sf $DOTFILES/vim/ $HOME/.vim
mkdir -p $HOME/.vimundo # the directory for undo files.

# tmux
ln -sf $DOTFILES/tmux.conf $HOME/.tmux.conf

# ag
ln -sf $DOTFILES/agignore $HOME/.agignore

# ruby
ln -sf $DOTFILES/ruby/gemrc $HOME/.gemrc
ln -sf $DOTFILES/ruby/rubocop.yml $HOME/.rubocop.yml
ln -sf $DOTFILES/ruby/ruby-version $HOME/.ruby-version

# bin/
ln -sf $DOTFILES/bin/ $HOME/bin
