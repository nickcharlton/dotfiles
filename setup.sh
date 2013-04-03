#!/bin/bash

directory=`pwd`

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
ln -is $directory/_bash_profile ~/.bash_profile
ln -is $directory/_bash_aliases ~/.bash_aliases
# git
ln -is $directory/_gitconfig ~/.gitconfig
ln -is $directory/_gitignore ~/.gitignore
# vim
ln -is $directory/_vimrc ~/.vimrc
ln -is $directory/_vim ~/.vim
# mutt
ln -is $directory/_muttrc ~/.muttrc
ln -is $directory/_mutt ~/.mutt
# irssi
ln -is $directory/_irssi ~/.irssi
# tmux
ln -is $directory/_tmux.conf ~/.tmux.conf
# matplotlib
ln -is $directory/_matplotlib ~/.matplotlib

