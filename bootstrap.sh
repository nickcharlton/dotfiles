#!/usr/bin/env bash

# where to link
SOURCE_PATH="$HOME/.dotfiles"
# ~ if no flag
TARGET_PATH="$HOME"

# then symlinks
# bash
ln -sf $SOURCE_PATH/_bash_profile $TARGET_PATH/.bash_profile
ln -sf $SOURCE_PATH/aliases $TARGET_PATH/.aliases
ln -sf $SOURCE_PATH/env $TARGET_PATH/.env
# zsh
ln -sf $SOURCE_PATH/zsh/zprezto/ $TARGET_PATH/.zprezto
ln -sf $SOURCE_PATH/zsh/zlogin $TARGET_PATH/.zlogin
ln -sf $SOURCE_PATH/zsh/zshenv $TARGET_PATH/.zshenv
ln -sf $SOURCE_PATH/zsh/zshrc $TARGET_PATH/.zshrc
ln -sf $SOURCE_PATH/zsh/zpreztorc $TARGET_PATH/.zpreztorc
# git
ln -sf $SOURCE_PATH/git/gitconfig $TARGET_PATH/.gitconfig
ln -sf $SOURCE_PATH/git/gitignore $TARGET_PATH/.gitignore
# vim
ln -sf $SOURCE_PATH/_vimrc $TARGET_PATH/.vimrc
ln -sf $SOURCE_PATH/_vim/ $TARGET_PATH/.vim
# irssi
ln -sf $SOURCE_PATH/_irssi/ $TARGET_PATH/.irssi
# tmux
ln -sf $SOURCE_PATH/tmux/tmux.conf $TARGET_PATH/.tmux.conf
ln -sf $SOURCE_PATH/tmux/tmux-powerlinerc $TARGET_PATH/.tmux-powerlinerc
# ruby
ln -sf $SOURCE_PATH/ruby/gemrc $TARGET_PATH/.gemrc
# lldbinit
ln -sf $SOURCE_PATH/lldbinit $TARGET_PATH/.lldbinit
# bin/
ln -sf $SOURCE_PATH/bin/ $TARGET_PATH/bin


