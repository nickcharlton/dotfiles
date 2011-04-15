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

ln -s $directory/_gitconfig ~/.gitconfig
ln -s $directory/_vimrc ~/.vimrc
ln -s $directory/_vim ~/.vim
