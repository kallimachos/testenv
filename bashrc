#!/bin/bash
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Set prompt
PS1="[\u \W]\$ "

# User specific aliases and functions
alias ...='cd ../..'
alias ..='cd ..'
alias a='cd && clear'
alias c='clear'
alias grep='grep --color=auto'
alias h='history'
alias la='ls -laG'
alias ll='ls -lG'
alias p='python'
