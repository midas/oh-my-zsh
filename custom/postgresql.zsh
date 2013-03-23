#!/bin/zsh

alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pg_procs='ps auxwww | grep postgres'
alias pg_config_socket='grep unix_socket /usr/local/var/postgres/postgresql.conf'
