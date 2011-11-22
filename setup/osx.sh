#!/bin/bash

##################################################
#                                                #
# Setup Mac OS X environment                     #
#                                                #
# Author: Nick Charlton <hello@nickcharlton.net> #
# Date: 09/11/11                                 #
# Version: 2.0                                   #
#                                                #
##################################################

directory=`pwd`

# first, homebrew
hash brew &> /dev/null
if [ $? -eq 1 ]; then
    `/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"`

    hash brew &> /dev/null
    if [[ $? -eq 1 ]; then
        echo "Homebrew failed. Stopping before any more errors happen.";
        exit 1;
    fi
fi

# update homebrew
brew update

# then install any packages (if tmux is installed, assume the command has run before)i
hash tmux &> /dev/null
if [ $? -eq 1 ]; then
    `brew install tmux rbenv ruby-build`
fi

# then any settings

# screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# xcode
defaults write com.apple.Xcode PBXCustomTemplateMacroDefinitions '{ORGANIZATIONNAME = "Nick Charlton"; }'

# then restart anything that needs restarting
killall SystemUIServer
