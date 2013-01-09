#!/bin/zsh

alias fsc-gvt='/usr/local/bin/searchd --stop --config "/Users/cjharrelson/development/iberon/gvt-us/config/development.sphinx.conf"'
alias ps-searchd='ps -ea | grep "searchd"'

alias cpdbtldb='cap production db:dump:to_local_db'
alias cpdbtlf='cap production db:dump:to_local_file'
