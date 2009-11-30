# ~/.bash_aliases

# LS
alias ls='ls -hFG'        # add colors for filetype recognition
alias l='ls'
alias ll='ls -lFG'
alias la='ls -Al'         # show hidden files
alias lx='ls -lXB'        # sort by extension
alias lk='ls -lSr'        # sort by size
alias lc='ls -lcr'        # sort by change time
alias lu='ls -lur'        # sort by access time
alias lr='ls -lR'         # recursive ls
alias lt='ls -ltr'        # sort by date
alias lm='ls -al | more'  # pipe through 'more'

# Grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# User specific aliases and functions
alias more='less'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

# Movement
alias home='cd ~'
alias ..='cd ..'
alias ...='cd ../..'

# History
alias h='history'
alias c='clear'

# ENV
alias rbash='source ~/.bash_profile'
alias path='echo -e ${PATH//:/\\n}'
alias cpath='echo -e ${CLASSPATH//:/\\n}'
alias ldpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

# Process Control
alias j='jobs -l'

# SSH
# X Forwarding seems to kill jboss
# alias ssh='ssh -X'

# Database
alias mysql=mysql5

# Ruby
alias irb='irb --readline -r irb/completion -rubygems' # use readline, completion and require rubygems by default for irb

# JRuby
alias jruby='$JRUBY_HOME/bin/jruby'

# Rails
alias ss='jruby script/server'
alias sc='jruby script/console'
alias a='autotest -rails'

# SVN
alias sup='svn up'
alias sst='svn st'
alias svnclear='find . -name .svn -print0 | xargs -0 rm -rf' # removes all .svn folders from directory recursively
alias svnaddall='svn status | grep "^\?" | awk "{print \$2}" | xargs svn add' # adds all unadded files

# Vim
alias nerd='vim -c NERDTree'

# Q Language
alias q="~/q/m32/q"

# Firefox
alias ff_dev="/Applications/Firefox.app/Contents/MacOS/firefox-bin -no-remote -P dev &"
