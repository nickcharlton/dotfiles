# default path
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/bin:/usr/sbin:/sbin"

# dotfiles bin
PATH="$HOME/bin:/usr/local/sbin:$PATH"

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

export -U PATH
