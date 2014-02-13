#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export PS1=$'%{\e[0;34m%}[apercu@%~%{]\e[0m%} '
setxkbmap -layout fr
xset -b
