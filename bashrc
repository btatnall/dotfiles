# ~/.bashrc

# rvm-install added line:
if [[ -s ~/.rvm/scripts/rvm ]] ; then . ~/.rvm/scripts/rvm ; fi
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

if [ -f `brew --prefix`/etc/bash_completion ]; then . `brew --prefix`/etc/bash_completion ; fi
if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases ; fi
if [ -f ~/.bash_functions ]; then . ~/.bash_functions ; fi
if [ -f ~/.bash_apps ]; then . ~/.bash_apps ; fi
if [ -f ~/.bash_user ]; then . ~/.bash_user ; fi

PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH

DYLD_LIBRARY_PATH=$HOME/opt/lbm/current/Darwin-9.7.0-x86_64/lib
export DYLD_LIBRARY_PATH

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

NONE="\e[0m"
R="\e[0;31m" # red
G="\e[0;32m" # green
function __rvm_ps1 {
if [[ -f $rvm_path/bin/rvm-prompt ]]; then
#  local args=("v" "g")
  local system=$(rvm-prompt s)
  local interp=$(rvm-prompt i)
  if [[ ! -n $system ]]; then
    # Don't show interpreter if it's just MRI
    case $interp in
      ruby) printf "${1:- (%s)}" "$(rvm-prompt v g)" ;;
      *)    printf "${1:- (%s)}" "$(rvm-prompt i v g)" ;;
    esac
  fi
fi
}

PS1="\h \W${G}\$(__git_ps1 \" %s\")${R}\$(__rvm_ps1 \"♦ %s \")${NONE}\$ ";
