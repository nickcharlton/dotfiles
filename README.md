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

```bash
brew install ruby python
brew install vim tmux tree reattach-to-user-namespace curl-ca-bundle
brew install haskell-platform gfortran
```

### Ruby / Python

At a sort of 'operational minimum':

```bash
gem install pry
pip install awscli flake8 ipython virtualenv
```

## License

Copyright (c) Nick Charlton 2011. Licensed under the MIT license.

Inspired by dotfiles from: [Zach Holman](https://github.com/holman/dotfiles), [Ryan Bates](https://github.com/ryanb/dotfiles), [Mathias Bynens](https://github.com/mathiasbynens/dotfiles), et. al.

