# dotfiles

A bunch of impossible to live without config files.

## Install

```sh
git clone git@github.com:nickcharlton/dotfiles.git ~/.dotfiles
env RCRC=$HOME/.dotfiles/rcrc rcup
```

(Assumes you have [rcm][] available.)

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

### JavaScript

[`npm`][] doesn't provide a native way to handle global dependencies, so
there's an `npm-globals.txt` which can be used with the following command:

```sh
xargs npm install -g < npm-globals.txt
```

[Inspired by this StackOverflow answer][so-npm].

## License

Copyright (c) Nick Charlton 2011. Licensed under the MIT license.

Inspired by dotfiles from [Zach Holman][], [Ryan Bates][], [Mathias Bynens][],
and many more since.

[rcm]: https://github.com/thoughtbot/rcm
[Install most things]: https://robots.thoughtbot.com/brewfile-a-gemfile-but-for-homebrew
[`Brewfile`]: https://github.com/Homebrew/homebrew-bundle
[default-gems]: https://github.com/asdf-vm/asdf-ruby#default-gems
[`npm`]: http://npmjs.com
[so-npm]: https://stackoverflow.com/a/47562656/83386
[Zach Holman]: https://github.com/holman/dotfiles
[Ryan Bates]: https://github.com/ryanb/dotfiles
[Mathias Bynens]: https://github.com/mathiasbynens/dotfiles
