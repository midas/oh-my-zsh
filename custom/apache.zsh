#!/bin/zsh

alias cd-apache-logs='/var/log/httpd'
alias exec-sudo-vim-vhosts='sudo vim /etc/apache2/extra/httpd-vhosts.conf'
alias exec-sudo-vim-hosts='sudo vim /etc/hosts'
alias exec-sudo-apache-restart='sudo apachectl restart'
alias exec-flush-cache='dscacheutil -flushcache'
alias less-sudo-apache-access-log='sudo less /var/log/httpd/access_log'
alias less-sudo-apache-error-log='sudo less /var/log/httpd/error_log'
alias less-sudo-apache-sslerror-log='sudo less /var/log/httpd/ssl_error_log'
alias less-sudo-apache-request-log='sudo less /var/log/httpd/request_log'
alias less-sudo-apache-sslrequest-log='sudo less /var/log/httpd/ssl_request_log'
