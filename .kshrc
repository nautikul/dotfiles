#!/bin/ksh
# My kshrc
#  ntx

HISTSIZE=1
PS1="$ "
set -o emacs




# Aliases
alias pii="doas pkg_add" 
alias editkshrc="$EDITOR $HOME/.kshrc && . $HOME/.kshrc"
alias sdnow="doas shutdown -f now"
alias reboot="doas shutdown -fr now"
