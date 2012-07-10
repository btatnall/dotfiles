# .bash_profile

# running as bash
if [ -n "$BASH_VERSION" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

export GREP_OPTIONS='--color=auto'


PAGE=less
DISPLAY=:0.0
EDITOR=vim
SVN_EDITOR=vim
export PAGE DISPLAY EDITOR SVN_EDITOR

##
# Your previous /Users/btatnall/.bash_profile file was backed up as /Users/btatnall/.bash_profile.macports-saved_2010-08-18_at_12:02:00
##

# MacPorts Installer addition on 2010-08-18_at_12:02:00: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

