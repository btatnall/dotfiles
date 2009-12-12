# ~/.bashrc

# rvm-install added line:
if [[ -s ~/.rvm/scripts/rvm ]] ; then . ~/.rvm/scripts/rvm ; fi

if [ -f ~/.bash_functions ]; then . ~/.bash_functions ; fi

if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases ; fi

# MacPorts bash-completion
if [ -f /opt/local/etc/bash_completion ]; then . /opt/local/etc/bash_completion ; fi

if [ -f ~/.bash_user ]; then . ~/.bash_user ; fi

# History
export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
shopt -s histappend

# Shell Options
shopt -s cdspell
shopt -s cmdhist
shopt -s checkwinsize

# Use vi inline editing
set -o vi

# make bash autocomplete with up arrow
#bind '"\020":history-search-backward'
#bind '"\016":history-search-forward'

# make tab cycle through commands instead of listing
#bind '"\t":menu-complete'


