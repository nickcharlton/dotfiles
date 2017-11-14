#!/usr/bin/env bash

source ./env

# shell
ln -sf $DOTFILES/aliases $HOME/.aliases
ln -sf $DOTFILES/env $HOME/.env

# bash
ln -sf $DOTFILES/bash_profile $HOME/.bash_profile

# zsh
ln -sf $DOTFILES/zsh/zprezto/ $HOME/.zprezto
ln -sf $DOTFILES/zsh/zlogin $HOME/.zlogin
ln -sf $DOTFILES/zsh/zshenv $HOME/.zshenv
ln -sf $DOTFILES/zsh/zshrc $HOME/.zshrc
ln -sf $DOTFILES/zsh/zpreztorc $HOME/.zpreztorc

# git
ln -sf $DOTFILES/git/gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/git/gitignore $HOME/.gitignore

# vim
ln -sf $DOTFILES/vimrc $HOME/.vimrc
ln -sf $DOTFILES/vim/ $HOME/.vim
mkdir -p $HOME/.vimundo # the directory for undo files.

# tmux
ln -sf $DOTFILES/tmux.conf $HOME/.tmux.conf

# ruby
ln -sf $DOTFILES/ruby/gemrc $HOME/.gemrc
ln -sf $DOTFILES/ruby/rubocop.yml $HOME/.rubocop.yml
ln -sf $DOTFILES/ruby/ruby-version $HOME/.ruby-version

# bin/
ln -sf $DOTFILES/bin/ $HOME/bin
