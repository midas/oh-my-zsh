#!/bin/zsh

alias fsc-gvt='/usr/local/bin/searchd --stop --config "/Users/cjharrelson/development/iberon/gvt-us/config/development.sphinx.conf"'
alias ps-searchd='ps -ea | grep "searchd"'

alias cpdtldb='cap production db:dump:to_local_db'
alias cpdtlf='cap production db:dump:to_local_file'

alias dev-archivalock-ipad='cd titaniumdev/ArchivaLock && mvim .'
#alias dev-fluid_digital='cd fluid_digital && mate .'
#alias dev-fixed_width_parser='cd gemdev/fixed_width_parser && mate .'
#alias dev-geonames_client='cd gemdev/geonames_client && mate .'
#alias dev-guilded='cd gemdev/guilded && mate .'
#alias dev-g_already_grid='cd gemdev/g_already_grid && mate .'
#alias dev-hei='cd hei && mvim .'
#alias dev-medicce='cd medicce && mate .'
alias dev-ncite_server='cd ncite_server && mvim .'
#alias dev-ninja-deploy='cd gemdev/ninja-deploy && mate .'
#alias dev-s3utils='cd gemdev/s3utils && mate .'
#alias dev-trabajos='cd gemdev/trabajos && mate .'

alias dev-archivalock='devenv archivalock'
alias kill-dev-archivalock='tmux kill-session -t dev-archivalock'
alias dev-gvtus='devenv gvt-us'
alias kill-dev-gvtus='tmux kill-session -t dev-gvt-us'
alias kill-dev-archivalock-mobile='tmux kill-session -t dev-ArchivaLock'
