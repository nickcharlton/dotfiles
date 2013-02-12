# dotfiles

A bunch of impossible to live without config files. `init.sh` bootstraps everything.

Currently includes terminal utilities: tmux, vim, mutt, git, bash, irssi. And
a half-assed configuration for dwm.

See `USAGE.md` for specific commands (and common options/flags for some tools.)

## Install/Setup

    git clone --recursive git://github.com/nickcharlton/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    sh init.sh

## Dependencies

* Debian: apt-get install tmux vim git
* Debian (dwm): apt-get install libx11-dev libxinerama-dev x11-xserver-utils
* Mac only: [Homebrew](https://github.com/mxcl/homebrew), bash 4, [Python](http://docs.python-guide.org/en/latest/starting/install/osx/)

## License

Copyright Nick Charlton 2011. Licensed under the MIT license.

Inspired by dotfiles from: [Zach Holman](https://github.com/holman/dotfiles), [Ryan Bates](https://github.com/ryanb/dotfiles), [Mathias Bynens](https://github.com/mathiasbynens/dotfiles), et. al.

