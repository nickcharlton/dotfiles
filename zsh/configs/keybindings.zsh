# give us access to ^Q
stty -ixon

# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode

# handy keybindings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^K" kill-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey "^Q" push-line-or-edit
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"
bindkey "^[[3~" delete-char

# jump to the end, rather than the start of words when moving back and forth
# for forward, this straightfoward, but we need to define a custom function to
# go backwards
zle -A emacs-forward-word forward-word

zle -N backward-word backward-word-end
backward-word-end() {
  zle .backward-word

  (( CURSOR )) ||
      return

  zle .backward-word
  zle .emacs-forward-word
}

bindkey "\ef" forward-word
bindkey "\eb" backward-word
