if [ -n "${HOMEBREW_PREFIX+1}" ]; then
  PREFIX=$(brew --prefix)
else
  PREFIX="/usr"
fi

source $PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
