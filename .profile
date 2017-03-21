# Variables
# ---------
export PS1=$'%{\e[0;34m%}%T%{\e[0m%} %{\e[0;34m%}[%{\e[0m%}%{\e[0;32m%}%n%{\e[0m%}%{\e[0;30m%}:%{\e[0m%}%{\e[0;36m%}%m%{\e[0m%}%{\e[0;34m%}]%{\e[0m%} %{\e[0;34m%}%~ %{\e[0m%}'
export MAIL='bgronon@uber.com'
export DEFAULT_USER='bgronon'
export LANG='en_US.UTF-8'
export EDITOR='nvim'
export GPG_TTY=$(tty)

if [[ $(uname) == 'Linux' ]]; then
  export BROWSER='google-chrome-stable'
fi

# Aliases
# -------
alias v='nvim'
alias vim='echo "No" && echo $@ > /dev/null'
alias prof='vim ~/.profile && sprof'
alias sprof='source ~/.profile'
alias snips='cd ~/.vim/bundle/ultisnips/ultiSnips'
alias bnpm='npm --userconfig=$HOME/.bnpmrc'
alias uaws='aws-credential-client -x -u balthazar@uber.com -t push -r engineering'
alias adiff='arc diff --allow-untracked'
alias gre='grep -rni'

alias l='ls -la'

alias gits='git status'
alias gitc='git commit -S'
alias gita='git add'
alias gitk='git checkout'
alias gitp='git push'
alias gitt='git tag -s'
alias gg='cd ~/git'
alias u='cd ~/Uber'

alias lint='npm run lint 2> /dev/null'
alias watch='npm run watch'
alias b='npm run build'

alias scaffold='git config --local user.name TheScaffolder && git config --local user.email spam@forpurpose.io && git commit --amend --author "TheScaffolder <spam@forpurpose.io>" && git config --local --unset user.email && git config --local --unset user.name'

if [[ `uname` == 'Darwin' ]]; then
  alias dl='cd ~/Downloads'
else
  alias dl='cd ~/downloads'
  alias pbcopy='xsel --clipboard --input'
  alias u='sudo pacman -Syyu'
fi

# Functions
# ---------
function y() { yarn $@ --ignore-engines ;}

if [[ $(uname) == 'Linux' ]]; then
  function light() { sudo ~/.bin/light_.sh $@ ;}
  function off() { sudo shutdown 0 ;}
fi
