#!/usr/bin/env bash

if [[ ! -f ${HOME}/.bash.work ]];then
  echo "${HOME}/.bash.work not found... ignoring"
  return
fi

# echo "work.bash loaded..."

if [[ -f ${BASH_IT}/custom/work.aliases ]]; then
  . ${BASH_IT}/custom/work.aliases
  echo "Loading work.aliases"
fi

# Required for ls colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
