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

directory=`dirname $(readlink -f $0)`

# bash
ln -s $directory/_bashrc ~/.bashrc
# git
ln -s $directory/_gitconfig ~/.gitconfig
# vim
ln -s $directory/_vimrc ~/.vimrc
ln -s $directory/_vim ~/.vim
# mutt
ln -s $directory/_muttrc ~/.muttrc
ln -s $directory/_mutt ~/.mutt
# screen
ln -s $directory/_screenrc ~/.screenrc
