# .bash_profile

# running as bash
if [ -n "$BASH_VERSION" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

if [ "\$(type -t __git_ps1)" ]; then
  LIGHTBLUE="\[\033[0;36m\]"
  WHITE="\[\033[1;37m\]"
  PURPLE="\[\033[1;35m\]"
  PS1="\$(__git_ps1 '$PURPLE($LIGHTBLUE%s$PURPLE)$WHITE ')$PS1"
  export GIT_PS1_SHOWDIRTYSTATE=true
  export GIT_PS1_SHOWSTASHSTATE=true
  export GIT_PS1_SHOWUNTRACKEDFILES=true
fi

# User specific environment and startup programs
JRUBY_HOME=$HOME/opt/jruby/current
ANT_HOME=$HOME/opt/ant/current

JBOSS_HOME=$HOME/opt/jboss
CATALINA_HOME=$HOME/opt/apache-tomcat-6.0.14
export JRUBY_HOME ANT_HOME JBOSS_HOME CATALINA_HOME

MACPORTPATH=/opt/local
MANPATH=$MACPORTPATH/share/man:$MANPATH
PATH=$HOME/bin:$JRUBY_HOME/bin:$MACPORTPATH/bin:$MACPORTPATH/sbin:/usr/local/bin:$PATH
export MANPATH PATH

DYLD_LIBRARY_PATH=$HOME/opt/lbm/current/Darwin-9.7.0-x86_64/lib
export DYLD_LIBRARY_PATH

PAGE=less
DISPLAY=:0.0
EDITOR=vim
SVN_EDITOR=vim
export PAGE DISPLAY EDITOR SVN_EDITOR
