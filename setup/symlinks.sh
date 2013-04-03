#!/bin/bash

##################################################
#                                                #
# Symlinks the dotfiles to where they're         #
# supposed to be.                                #
#                                                #
# Author: Nick Charlton <hello@nickcharlton.net> #
# Date: 09/11/11                                 #
# Version: 2.0                                   #
#                                                #
##################################################

directory=`pwd`

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
# gnome-terminal
if [ -f /usr/bin/gnome-terminal ]
    then
		`$directory/_gnome_terminal/set_dark.sh`
fi
