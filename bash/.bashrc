#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Local Binaries
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/sbin"

alias ls='ls --color=auto -p'
alias la='ls -Alh'
alias grep='grep --color=auto'
alias stow='stow -d ~/dots'
alias open='nautilus'
#################################################################

# Alias
alias compose=docker-compose

### Terminal Executions
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
# starship
eval "$(starship init bash)"


### Sources
# Zoxide
source $HOME/.bash-utils/zoxide.bash