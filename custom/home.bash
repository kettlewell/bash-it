#!/usr/bin/env bash

if [[ ! -f ${HOME}/.bash.home ]];then
  # echo "${HOME}/.bash.home not found... ignoring"
  return
fi

# echo "home.bash loaded..."

if [[ -f ${BASH_IT}/custom/home.aliases ]]; then
  . ${BASH_IT}/custom/home.aliases
  # echo "Loading home.aliases"
fi
