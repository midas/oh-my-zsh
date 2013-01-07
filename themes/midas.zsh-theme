#!/bin/zsh

local RVM_COLOR="cyan"
local NON_ROOT_USER_COLOR="green"
local ROOT_USER_COLOR="red"
local HOST_COLOR="green"
local PROMPT_COLOR="red"
local GIT_SEPERATOR_COLOR="green"
local GIT_SHA_COLOR="yellow"
local GIT_PIPE_COLOR="green"
local GIT_BRANCH_COLOR="yellow"
local GIT_CLEAN_COLOR="green"
local GIT_DIRTY_COLOR="red"
local TIME_COLOR="green"

local PROMPT2_CHARACTERS='\'
local DATE_FORMAT_STR='%m-%d-%y'
local DATE_TIME="%D{${DATE_FORMAT_STR}} %*"

if [ $UID -eq 0 ]; then NCOLOR=$ROOT_USER_COLOR; else NCOLOR=$NON_ROOT_USER_COLOR; fi
#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host="%{$fg[$NCOLOR]%}%n%{$fg[$HOST_COLOR]%}@%M%{$reset_color%}"
local current_dir="%~"
local git_sha="$(git_prompt_short_sha)"
local git_prompt='$(git_prompt_info)'

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/$VI_MODE_EDIT_INDICATOR}/(main|viins)/$VI_MODE_TYPE_INDICATOR}"
}

function _vi_status() {
  if {echo $fpath | grep -q "plugins/vi-mode"}; then
    echo "$(vi_mode_prompt_info)"
  fi
}

function midas_precmd {
  ZSH_THEME_RVM_RUBY=''
  if which rvm-prompt &> /dev/null; then
    rvm_prompt_cmd=`which rvm-prompt`
    ZSH_THEME_RVM_RUBY="%{$fg[$RVM_COLOR]%}%{$($rvm_prompt_cmd s i v p g)%}%{$reset_color%}"
  else
    if which rbenv &> /dev/null; then
      ZSH_THEME_RVM_RUBY="%{$fg[$RVM_COLOR]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}"
    fi
  fi
}

function setprompt() {
  PROMPT='
$user_host:$current_dir $ZSH_THEME_RVM_RUBY $(git_prompt_info)
$(_vi_status) %{$fg[$PROMPT_COLOR]%}%(!.#.»)%{$reset_color%} '

  if [ $TIME_COLOR = "white" ]; then
    RPROMPT=$DATE_TIME
  else
    RPROMPT="%{$FG[237]%}$DATE_TIME%{$reset_color%}"
    #RPROMPT='$fg[$TIME_COLOR]$DATE_TIME$reset_color'
  fi
  PROMPT2="%{$fg[red]%}$PROMPT2_CHARACTERS %{$reset_color%}"
  #RPS1='${return_code}'

  ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[$GIT_SEPERATOR_COLOR]%}±%{$fg[$GIT_SHA_COLOR]%}$git_sha%{$fg[$GIT_PIPE_COLOR]%}|%{$fg[$GIT_BRANCH_COLOR]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
  ZSH_THEME_GIT_PROMPT_CLEAN=""
  #ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[$GIT_CLEAN_COLOR]%}✔"
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[$GIT_DIRTY_COLOR]%}✘"
}

autoload -U add-zsh-hook
add-zsh-hook precmd midas_precmd

setprompt

