#!/bin/zsh
alias rmsvndirs='rm -rf `find . -type d -name .svn`'
alias hs='history | egrep -i'
alias hsgrep='history | egrep -i'
alias musictoitunes='cd /Users/cjharrelson/Desktop/recorded-music && scp ./* macminitheater.local:"/Users/cjharrelson/Music/iTunes/Media/Automatically\ Add\ to\ iTunes/."'
alias tarbz='tar -cjvf'
alias targz='tar -czf'
alias pwdtoclipboard='pwd | pbcopy'

function vimgrep() {
  if [ $2 ]; then
    dir=$2
  else
    dir='.'
  fi

  echo "Greping for '$1' in $dir and opening in Vim..."
  vim `grep -rl $1 $dir`
}

function grepfiles() {
  if [ $2 ]; then
    dir=$2
  else
    dir='.'
  fi

  echo "Looking for '$1' in $dir ..."
  find $dir -type f -exec grep $1 {} \; -print
}
