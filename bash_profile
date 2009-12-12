# .bash_profile

# running as bash
if [ -n "$BASH_VERSION" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

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
