#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -p'
alias la='ls -Alh'
alias grep='grep --color=auto'
alias stow='stow -d ~/dots'
#################################################################

# Alias
alias compose=docker-compose

### Sources
# Zoxide
source $HOME/.bash-utils/zoxide.bash

### Terminal Executions
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
# starship
eval "$(starship init bash)"