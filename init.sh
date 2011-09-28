#!/bin/bash

##################################################
#                                                #
# A little bash script to setup the dotfiles     #
#                                                #
# Author: Nick Charlton <hello@nickcharlton.net> #
# Date: 15/04/11                                 #
# Version: 1.0                                   #
#                                                #
##################################################

directory=`pwd`

# bash
#ln -is $directory/_bashrc ~/.bashrc
# git
ln -is $directory/_gitconfig ~/.gitconfig
# vim
ln -is $directory/_vimrc ~/.vimrc
ln -is $directory/_vim ~/.vim
# mutt
ln -is $directory/_muttrc ~/.muttrc
ln -is $directory/_mutt ~/.mutt
# gnome-terminal
if [ -f /usr/bin/gnome-terminal ]
    then
        `$directory/_gnome_terminal/set_dark.sh`
fi
# irssi
ln -is $directory/_irssi ~/.irssi/
# tmux
ln -is $directory/tmux.conf ~/.tmux.conf
