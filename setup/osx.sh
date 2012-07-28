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

# screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# xcode
defaults write com.apple.Xcode PBXCustomTemplateMacroDefinitions '{ORGANIZATIONNAME = "Nick Charlton"; }'

# then restart anything that needs restarting
killall SystemUIServer
