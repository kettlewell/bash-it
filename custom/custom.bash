#!/usr/bin/env bash
#echo "custom.bash loading"
if [[ -f ${BASH_IT}/custom/custom.aliases ]];then
  . ${BASH_IT}/custom/custom.aliases
  # echo "Custom.aliases loading"
fi

# echo "Custom.bash loaded ... "

# TODO:
#        Need to distinguish between work and home environments.
#        consider a sentinel file on work machines
#################################################################

shopt -s checkwinsize

# if [[ -f ${HOME}/.work && -f ${HOME}/.custom.work.bash ]]; then
#     source ${HOME}/.custom.work.bash
# fi


# xrdb -merge ~/.Xresources

# export PATH="/home/matt/dotfiles/scripts:/home/matt/dotfiles/scripts/Ansible/Deploy:/home/matt/p4bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:$HOME/.rvm/bin:/usr/pgsql-9.4/bin"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
EDITOR='emacs'
VISUAL='emacs'
ALTERNATE_EDITOR='vim'


function csdiff(){
    if [[ -f $1 ]] && [[ -f $2 ]];then
        /usr/bin/diff -W 165 -t -w --suppress-common-lines -y  $1 $2 | /usr/bin/colordiff
    elif [[ -d $1 ]] && [[ -d $2 ]]; then
        # recursive diff doesn't work with color diff... will need to use something like find instead
        # for now... just recursive diff ( -r ) without colordiff
        /usr/bin/diff -r -W 165 -t -w --suppress-common-lines -y  $1 $2
    else
        echo "csdiff ERROR: Both arguments must be same type, either FILE or DIRECTORY"
    fi
}

export BROWSER=/usr/bin/google-chrome
