# colours
# Wrapped so they're reset properly and easier to read
# Available: green, magenta, red, cyan, blue, yellow.
prompt_color() {
  [[ -n "$1" ]] && print "%{$fg[$2]%}$1%{$reset_color%}"
}
prompt_color_bold() {
  [[ -n "$1" ]] && print "%{$fg_bold[$2]%}$1%{$reset_color%}"
}
prompt_blue()   { print "$(prompt_color "$1" blue)" }
prompt_bold_black() { print "$(prompt_color_bold "$1" black)" }
prompt_red()    { print "$(prompt_color "$1" red)" }
prompt_spaced() { [[ -n "$1" ]] && print " $@" }

# path
# %2~ means "show the last two components of the path, and show the home
# directory as ~".
#
# Examples:
#
# ~/foo/bar is shown as "foo/bar"
# ~/foo is shown as ~/foo (not /Users/nickcharlton/foo)
prompt_shortened_path() { print "$(prompt_bold_black "%2~")" }

# git
# see also: http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information
#
# Sets a prompt like the following, where the `new-prompt` bit is the current
# branch. This is blue when there's no known changes and yellow when there is.
# When there's a current action (like a rebase), this is shown after in red.
#
# normal state: `[~/.dotfiles new-prompt]%`
# when rebasing: `[~/.dotfiles new-prompt|rebase-i]%`
autoload -Uz vcs_info

local dirty_format="%F{yellow}"
local branch_format=$(prompt_blue "%c%u%b")
local action_status=$(prompt_red "%a")
local action_format="${branch_format}|${action_status}"

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr "${dirty_format}"
zstyle ':vcs_info:*' unstagedstr "${dirty_format}"
zstyle ':vcs_info:*' formats "${branch_format}"
zstyle ':vcs_info:*' actionformats "${action_format}"

prompt_git_status() {
  # vcs_info_msg_0_ is set by the `zstyle vcs_info` directives
  local colored_branch_name="$vcs_info_msg_0_"
  prompt_spaced "$colored_branch_name"
}

# before every command, load the git status
function precmd {
  vcs_info
}

setopt prompt_subst
PROMPT='[$(prompt_shortened_path)$(prompt_git_status)]%# '
