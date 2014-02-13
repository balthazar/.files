# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/apercu/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setxkbmap -layout fr
xset -b
export EDITOR=vim
export TERM=rxvt-unicode
export PS1=$'%{\e[0;34m%}[apercu@%~%{]\e[0m%} '

alias l="ls -la --color=auto"

