# ~/.bashrc
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth

# Shell Options
shopt -s cdspell
shopt -s cmdhist

# Use vi inline editing
set -o vi
