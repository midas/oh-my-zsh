#!/bin/zsh

alias bi='bundle install'
alias bl='bundle lock'
alias bu='bundle update'
alias bp='bundle pack'
alias bs='bundle show'
alias be='bundle exec'
alias bo='bundle open'

alias rebundle-archivalock='rvm gemset empty && echo "" && gem install bundler -v 1.0.13 && bundle install'
alias rebundle='rvm gemset empty && echo "" && gem install bundler && bundle install'
