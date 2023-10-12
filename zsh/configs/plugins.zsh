if [ -n "${HOMEBREW_PREFIX+1}" ]; then
  BREW_PREFIX=$(brew --prefix)
else
  BREW_PREFIX="/usr"
fi

source $BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
