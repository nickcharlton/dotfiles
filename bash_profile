##
## .bash_profile
## 

# enable variables and commands in the prompt
shopt -s promptvars

# set the prompt (like: [user@machine:Current Directory]$)
export PS1='[\u@\h:\W]\$ '

# pull in the aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# pull in the environment variables
if [ -f ~/.env ]; then
    . ~/.env
fi

# AWS (et. al.) secrets
if [ -f ~/.secrets ]; then
    . ~/.secrets
fi


