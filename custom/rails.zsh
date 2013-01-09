#!/bin/zsh

alias rr='rake routes'
alias rrc='clear && rake routes'
#alias rrsed='rake routes | sed -e "1d" -e "s,^[^/]*,,g" | awk '{print $1}' | sort | uniq'
alias rlc='rake log:clear'
alias rdbmig='rake db:migrate'
alias rdbmigc='clear && rake db:migrate'
alias devlog='tail -f log/development.log'


# Genesis
alias rdbs='rake CONTEXTS=all db:seed'
alias rdbsp='rake RAILS_ENV=production CONTEXTS=all db:seed'
alias rdbm='rake CONTEXTS=all db:mulligan'
alias rdbmt='rake CONTEXTS=all db:mulligan --trace'
alias rdbmtc='clear && rake CONTEXTS=all db:mulligan --trace'
alias rdbmp='rake RAILS_ENV=production CONTEXTS=all db:mulligan'
alias rdbmpt='rake RAILS_ENV=production CONTEXTS=all db:mulligan --trace'
