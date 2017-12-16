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

### Ruby

[Gems that should be installed with all Rubies][default-gems] should go in
`default-gems`.

### Python

There's a `requirements.txt` for Python:

```sh
pip2 install -r requirements.txt
```

## License

Copyright (c) Nick Charlton 2011. Licensed under the MIT license.

Inspired by dotfiles from [Zach Holman][], [Ryan Bates][], [Mathias Bynens][],
and many more since.

[Install most things]: https://robots.thoughtbot.com/brewfile-a-gemfile-but-for-homebrew
[`Brewfile`]: https://github.com/Homebrew/homebrew-bundle
[default-gems]: https://github.com/asdf-vm/asdf-ruby#default-gems
[Zach Holman]: https://github.com/holman/dotfiles
[Ryan Bates]: https://github.com/ryanb/dotfiles
[Mathias Bynens]: https://github.com/mathiasbynens/dotfiles
