# nickcharlton's dotfiles

This is the way I set things up. I use these on both Mac OS X and Debian. It also contains scripts to push it all into working. Without these, I'd probably be lost at sea. 

Currently includes: tmux, vim, mutt, git, bash, irssi.

Feel free to copy/steal/reuse whatever you find. Most have been at some point taken from others'. Please cite where you can. It's best for all.

## Install/Setup

    git clone git://github.com/nickcharlton/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    sh init.sh

That's it. 

## Install Script

The install script does a few things, both differ in what is setup per OS. It can be run over and over without causing any issues. You'll need to be root for certain tasks.

### Mac OS X

1. First installs homebrew.
2. Installs tmux, rbenv and ruby-build.
3. Symlinks the dotfiles.

### Debian

4. Symlinks the dotfiles.
5. Configures gnome-terminal, if it exists.

## License

Copyright Nick Charlton 2011. Licensed under the MIT license.

Inspired by dotfiles from: [Zach Holman](https://github.com/holman/dotfiles), [Ryan Bates](https://github.com/ryanb/dotfiles), [Mathias Bynens](https://github.com/mathiasbynens/dotfiles). And probably countless others that I can't remember (yes, that's bad, I know. >_>).
