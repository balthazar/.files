# Variables
# ---------
export PS1=$'%{\e[0;34m%}%T%{\e[0m%} %{\e[0;34m%}[%{\e[0m%}%{\e[0;32m%}%n%{\e[0m%}%{\e[0;30m%}:%{\e[0m%}%{\e[0;36m%}%m%{\e[0m%}%{\e[0;34m%}]%{\e[0m%} %{\e[0;34m%}%~ %{\e[0m%}'
export MAIL='bgronon@student.42.fr'
export MAIL42='bgronon@student.42.fr'
export USER42='bgronon'
export DEFAULT_USER='bgronon'
export LANG='en_US.UTF-8'
export EDITOR='vim'
export BROWSER='google-chrome-stable'

# Aliases
# -------
alias prof='vim ~/.profile'
alias sprof='source ~/.profile'
alias snips='cd ~/.vim/bundle/ultisnips/ultiSnips'

alias l='ls -la'

alias gits='git status'
alias gitf='git flow'
alias gitp='git push'
alias gitc='git commit'
alias gg='cd ~/git'

alias scaffold='git config --local user.name TheScaffolder && git config --local user.email spam@forpurpose.io && git commit --amend --author "TheScaffolder <spam@forpurpose.io>" && git config --local --unset user.email && git config --local --unset user.name'

if [[ `uname` == 'Darwin' ]]; then
  alias dl='cd ~/Downloads'
  export HOMEBREW_CACHE=/tmp/cache
  export HOMEBREW_TEMP=/tmp/brew
else
  alias dl='cd ~/downloads'
  alias pbcopy='xsel --clipboard --input'
  alias upgrade='sudo pacman -Syu'
fi

# Functions
# ---------
function count() { find "$@" -name '*.c' | xargs wc -l ;}
function emacs() { printf "No !\n" && vim "$@" ;}

if [[ `uname` == 'Linux' ]]; then
  function light() { sudo ~/.bin/light_.sh $@ ; }
  function off() { sudo shutdown 0 ;}
fi
