#!/bin/bash

# where to link
SOURCE_PATH="$HOME/dotfiles"
# ~ if no flag
TARGET_PATH="$HOME"

# osx specifics
if [ "$(uname -s)" == 'Darwin' ]; then
    # screenshots
    defaults write com.apple.screencapture disable-shadow -bool true
    
    # xcode
    defaults write com.apple.Xcode PBXCustomTemplateMacroDefinitions '{ORGANIZATIONNAME = "Nick Charlton"; }'

    # then restart anything that needs restarting
    killall SystemUIServer
fi


# then symlinks
# bash
ln -sf $SOURCE_PATH/_bash_profile $TARGET_PATH/.bash_profile
ln -sf $SOURCE_PATH/_bash_aliases $TARGET_PATH/.bash_aliases
# git
ln -sf $SOURCE_PATH/_gitconfig $TARGET_PATH/.gitconfig
ln -sf $SOURCE_PATH/_gitignore $TARGET_PATH/.gitignore
# vim
ln -sf $SOURCE_PATH/_vimrc $TARGET_PATH/.vimrc
ln -sf $SOURCE_PATH/_vim/ $TARGET_PATH/.vim
# mutt
ln -sf $SOURCE_PATH/_muttrc $TARGET_PATH/.muttrc
ln -sf $SOURCE_PATH/_mutt/ $TARGET_PATH/.mutt
# irssi
ln -sf $SOURCE_PATH/_irssi $TARGET_PATH/.irssi
# tmux
ln -sf $SOURCE_PATH/_tmux.conf $TARGET_PATH/.tmux.conf
# matplotlib
ln -sf $SOURCE_PATH/_matplotlib/ $TARGET_PATH/.matplotlib


