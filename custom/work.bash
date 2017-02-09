#!/usr/bin/env bash

if [[ ! -f ${HOME}/.bash.work ]];then
  # echo "${HOME}/.bash.work not found... ignoring"
  return
fi

# echo "work.bash loaded..."

if [[ -f ${BASH_IT}/custom/work.aliases ]]; then
  . ${BASH_IT}/custom/work.aliases
  # echo "Loading work.aliases"
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Set Aliases
#if [ -f ~/.aliases.mac ]; then
#    . ~/.aliases.mac
#fi

#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    . $(brew --prefix)/etc/bash_completion
#fi

#export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx



# Set Bash Prompt

#if [ -f ~/.bash_ps1_git_1.sh ]; then
#    . ~/.bash_ps1_git_1.sh
#fi
