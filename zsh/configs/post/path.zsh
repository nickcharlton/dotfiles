# default path
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/bin:/usr/sbin:/sbin"

# dotfiles bin
PATH="$HOME/bin:/usr/local/sbin:$PATH"

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# jabba
source $HOME/.jabba/jabba.sh

# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"


# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

export -U PATH
