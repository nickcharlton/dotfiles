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
`/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"`

if [[ "$(which brew)" != "/usr/local/bin/brew" ]]; then
    echo "Homebrew failed. Stopping before any more errors happen."
    exit 1
fi

# then install any packages
`brew install tmux rbenv ruby-build`
