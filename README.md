# dotfiles

A bunch of impossible to live without config files. `bootstrap.sh` symlinks
everything. `USAGE.md` gives some often handy commands.

## Install/Setup

```bash
git clone --recursive git://github.com/nickcharlton/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./bootstrap.sh
```

## Dependencies

It tries to work with both Debian (and so Ubuntu too) as well as OS X. But, OS X is
mostly used.

### Debian

```bash
apt-get install vim vim-scripts tmux git
```

### OS X

The included `Brewfile` lists all of the dependencies and extra taps:

```bash
brew bundle
```

### Ruby / Python

At a sort of 'operational minimum':

```bash
gem install bundler pry
pip install awscli flake8 ipython virtualenv
```

## License

Copyright (c) Nick Charlton 2011. Licensed under the MIT license.

Inspired by dotfiles from: [Zach Holman](https://github.com/holman/dotfiles), [Ryan Bates](https://github.com/ryanb/dotfiles), [Mathias Bynens](https://github.com/mathiasbynens/dotfiles), et. al.

