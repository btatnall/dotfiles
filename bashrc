# ~/.bashrc

# rvm-install added line:
if [[ -s ~/.rvm/scripts/rvm ]] ; then . ~/.rvm/scripts/rvm ; fi
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

BREW_PATH=/usr/local
BREW_PREFIX=`brew --prefix`
if [ -f $BREW_PREFIX/etc/bash_completion ]; then . $BREW_PREFIX/etc/bash_completion ; fi
if [ -f $BREW_PREFIX/etc/grc.bashrc ]; then . $BREW_PREFIX/etc/grc.bashrc ; fi
if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases ; fi
if [ -f ~/.bash_functions ]; then . ~/.bash_functions ; fi
if [ -f ~/.bash_apps ]; then . ~/.bash_apps ; fi
if [ -f ~/.bash_user ]; then . ~/.bash_user ; fi

export FIG_REMOTE_URL=ftp://devnas/builds/Fig/repos
export PATH=$HOME/bin:$BREW_PATH/bin:$BREW_PATH/sbin:$HOME/.rvm/bin:$PATH
export DYLD_LIBRARY_PATH=$HOME/opt/lbm/current/Darwin-9.8.0-x86_64/lib
export NODE_PATH=/usr/local/lib/node_modules

# History
export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
shopt -s histappend

# Shell Options
shopt -s cdspell
shopt -s cmdhist
shopt -s checkwinsize

# Use inline editing style
set -o emacs

# make bash autocomplete with up arrow
#bind '"\020":history-search-backward'
#bind '"\016":history-search-forward'

# make tab cycle through commands instead of listing
#bind '"\t":menu-complete'

NONE="\[\033[0m\]"
R="\[\033[0;31m\]" # red
G="\[\033[0;32m\]" # green
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
PS1="\h \W${G}\$(__git_ps1 \" %s\")${R}\$(__rvm_ps1 \"♦ %s \")${NONE}$ ";

# LAUNCHER (bash completion)
if [[ -s /Users/btatnall/.launcher/launcher_completion.bash ]] ; then source /Users/btatnall/.launcher/launcher_completion.bash ; fi
