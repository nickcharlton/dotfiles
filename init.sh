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
#ln -is $directory/_bashrc ~/.bashrc
# git
ln -is $directory/_gitconfig ~/.gitconfig
# vim
ln -is $directory/_vimrc ~/.vimrc
ln -is $directory/_vim ~/.vim
# mutt
ln -is $directory/_muttrc ~/.muttrc
ln -is $directory/_mutt ~/.mutt
# screen
ln -is $directory/_screenrc ~/.screenrc
