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
4. Sets up Terminal.app
    - sets Solarized as the default theme.
    - sets the text to Monaco 12pt.
    - sets a blinking block cursor.
    - mentions MouseTerm for mouse support.
5. Sets some OS X specifics.

### Debian

1. Installs the build environment.
2. Installs tmux, vim, vim-scripts.
3. Sets up and installs rbenv, ruby-build and a sensible ruby version.
4. Symlinks the dotfiles.
5. Configures gnome-terminal, if it exists.

### But...

**Isn't there a better thing to use to configure half of this stuff?**

Probably. But, all of these are my personal preferences. In most cases I won't be deploying a new machine to input my opinion on how it is setup.

