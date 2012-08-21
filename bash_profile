# .bash_profile

# running as bash
if [ -n "$BASH_VERSION" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

PAGE=less
DISPLAY=:0.0
EDITOR=vim
SVN_EDITOR=vim
export GREP_OPTIONS='--color=auto'
export PAGE DISPLAY EDITOR SVN_EDITOR
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
