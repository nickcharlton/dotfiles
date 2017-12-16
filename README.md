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

### macOS

[Install most things][] using the included [`Brewfile`][]:

```bash
brew tap homebrew/bundle
brew bundle
```

### Ruby / Python

The system Ruby is almost always fine for the standard set of tools:

```bash
sudo gem install cocoapods
gem install pry rubocop
pip install awscli flake8 ipython virtualenv tabulate numpy scipy
```

(These are all used as normal command line utilities and should be treated like
that).

For development, further Rubies should be installed with `ruby-install` and
switched to. Inside here, install `bundler` and then use as normal.

## License

Copyright (c) Nick Charlton 2011. Licensed under the MIT license.

Inspired by dotfiles from [Zach Holman][], [Ryan Bates][], [Mathias Bynens][],
and many more since.

[Install most things]: https://robots.thoughtbot.com/brewfile-a-gemfile-but-for-homebrew
[`Brewfile`]: https://github.com/Homebrew/homebrew-bundle
[Zach Holman]: https://github.com/holman/dotfiles
[Ryan Bates]: https://github.com/ryanb/dotfiles
[Mathias Bynens]: https://github.com/mathiasbynens/dotfiles
