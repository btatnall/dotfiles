# .bash_profile

# running as bash
if [ -n "$BASH_VERSION" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

PAGE=less
DISPLAY=:0.0
EDITOR=vim
SVN_EDITOR=vim
export PAGE DISPLAY EDITOR SVN_EDITOR
