#!/bin/sh
#export PS1='\[\e]2;\u@\H \w\a\e[32;40m\]${USER}@${HOSTNAME}: ${PWD}\n\[\e[31;1m\]${?#0}\[\e[0m\]>'
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

PS1=`echo '[\033[1;35m\u\033[0m'"@"'\033[0;31m\h\033[0m''\033[0;32m\w\033[0m]'``echo "\n> "`

# User specific aliases and functions
alias l='ls -ltr'

