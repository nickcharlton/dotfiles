# dotfiles bin
PATH="$HOME/bin:/usr/local/sbin:$PATH"

# chruby
source $CHRUBY_PREFIX/share/chruby/chruby.sh
source $CHRUBY_PREFIX/share/chruby/auto.sh

# go
PATH="$GOPATH/bin:$PATH"

# rust
PATH="$HOME/.cargo/env:$PATH"

# mkdir .git/safe in the root of repositories you trust
function git_safe_bin() {
  PATH=".git/safe/../../bin:$PATH"
}

if [[ -n "$ZSH_VERSION" ]]; then
  if [[ ! "$preexec_functions" == *git_safe_bin* ]]; then
    preexec_functions+=("git_safe_bin")
  fi
elif [[ -n "$BASH_VERSION" ]]; then
  PATH=".git/safe/../../bin:$PATH"
fi

export -U PATH
