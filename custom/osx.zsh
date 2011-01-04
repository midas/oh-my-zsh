#!/bin/zsh
alias showhidden='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'
alias showitunesnotifications='defaults write com.apple.dock itunes-notifications -bool yes; killall Dock'
alias hideitunesnotifications='defaults delete com.apple.dock itunes-notifications;killall Dock'