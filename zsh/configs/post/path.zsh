# default path
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/bin:/usr/sbin:/sbin"

# dotfiles bin
PATH="$HOME/bin:/usr/local/sbin:$PATH"

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# go
PATH="$GOPATH/bin:$PATH"

# rust
PATH="$HOME/.cargo/env:$PATH"

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

export -U PATH
