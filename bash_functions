# Process Control
function psa { ps aux $@; }

# Find
function ff  { find . -name $@ -print; }

# Status
function st {
  if [ -d ".svn" ]; then
    svn status
  else
    git status
  fi
}

# Ruby || JRuby
function cdgem {
  cd `gem env gemdir`/gems
  cd `ls | grep $1 | sort | tail -1`
}

function gemdoc {
  GEMDIR=`gem env gemdir`/doc
  open $GEMDIR/`ls $GEMDIR | grep $1 | sort | tail -1`/rdoc/index.html
}

function mategem {
  GEMDIR=`gem env gemdir`/gems
  mate $GEMDIR/`ls $GEMDIR | grep $1 | sort | tail -1`
}

function repoman_update {
  for file in ~/scm/repoman/*; do
    if [ -d $file ]; then
      cd $file && git pull
    fi
  done
}

function list_authors {
  find . -type d -depth 1 | grep -v '.git' | xargs -I {} git --git-dir {}/.git log --oneline --pretty | grep Author | sort | uniq
}

pman () {
  man -t "${1}" | open -f -a /Applications/Preview.app
}
