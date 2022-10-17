if [ -d "/opt/homebrew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -d "~/.linuxbrew" ]; then
  eval "$(~/.linuxbrew/bin/brew shellenv)"
elif [ -d "/home/linuxbrew" ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if [ -n "${HOMEBREW_PREFIX+1}" ]; then
  export CHRUBY_PREFIX=$(brew --prefix chruby)
else
  export CHRUBY_PREFIX="/usr/local"
fi
