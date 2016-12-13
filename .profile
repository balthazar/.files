# Variables
# ---------
export PS1=$'%{\e[0;34m%}%T%{\e[0m%} %{\e[0;34m%}[%{\e[0m%}%{\e[0;32m%}%n%{\e[0m%}%{\e[0;30m%}:%{\e[0m%}%{\e[0;36m%}%m%{\e[0m%}%{\e[0;34m%}]%{\e[0m%} %{\e[0;34m%}%~ %{\e[0m%}'
export MAIL='bgronon@uber.com'
export DEFAULT_USER='bgronon'
export LANG='en_US.UTF-8'
export EDITOR='vim'
export BROWSER='google-chrome-stable'
export GPG_TTY=$(tty)


# Aliases
# -------
alias prof='vim ~/.profile && sprof'
alias sprof='source ~/.profile'
alias snips='cd ~/.vim/bundle/ultisnips/ultiSnips'
alias uaws='aws-credential-client -x -u balthazar@uber.com -t push -r engineering'
alias vim='nvim'

alias l='ls -la'

alias gits='git status'
alias gitc='git commit'
alias gita='git add'
alias gitk='git checkout'
alias gitp='git push'
alias gg='cd ~/git'
alias u='cd ~/Uber'

alias lint='npm run lint 2> /dev/null'

alias scaffold='git config --local user.name TheScaffolder && git config --local user.email spam@forpurpose.io && git commit --amend --author "TheScaffolder <spam@forpurpose.io>" && git config --local --unset user.email && git config --local --unset user.name'

if [[ `uname` == 'Darwin' ]]; then
  alias dl='cd ~/Downloads'
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
