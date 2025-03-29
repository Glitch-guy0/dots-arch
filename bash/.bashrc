#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -p'
alias la='ls -Alh'
alias grep='grep --color=auto'
#################################################################

# Alias
alias compose=docker-compose
alias cd='z'

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
# Zoxide
eval "$(zoxide init bash)"
# starship
eval "$(starship init bash)