# load our own completion functions
fpath=(~/.zsh/completion /usr/local/share/zsh/site-functions $fpath)

# completion
autoload -U compinit
compinit

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# https://coderwall.com/p/jpj_6q
# Search through history for previous commands matching everything up to current
# cursor position. Move the cursor to the end of line after each match.
# thank you Gabe Berke-Williams for this beauty
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Colorful lists of possible autocompletions for `ls`
# zstyle doesn't understand the BSD-style $LSCOLORS at all, so use Linux-style
# $LS_COLORS
zstyle ':completion:*:ls:*:*' list-colors "$LS_COLORS"
