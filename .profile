# Variables
# ---------
export PS1=$'%{\e[0;34m%}%T%{\e[0m%} %{\e[0;34m%}[%{\e[0m%}%{\e[0;32m%}%n%{\e[0m%}%{\e[0;30m%}:%{\e[0m%}%{\e[0;36m%}%m%{\e[0m%}%{\e[0;34m%}]%{\e[0m%} %{\e[0;34m%}%~ %{\e[0m%}'
export MAIL='bgronon@uber.com'
export DEFAULT_USER='bgronon'
export LANG='en_US.UTF-8'
export EDITOR='vim'
export BOX='198.27.65.108'
export GPG_TTY=$(tty)

if [[ $(uname) == 'Linux' ]]; then
  export BROWSER='google-chrome-stable'
fi

# Aliases
# -------
alias v='vim'
alias prof='v ~/.profile && sprof'
alias sprof='source ~/.profile'
alias snips='cd ~/.vim/bundle/ultisnips/ultiSnips'
alias bnpm='npm --userconfig=$HOME/.bnpmrc'
alias unpm='npm --userconfig=$HOME/.unpmrc'
alias gre='grep -rni'

alias l='ls -lah'

alias gits='git status'
alias gitc='git commit'
alias gita='git add'
alias gitk='git checkout'
alias gitp='git push'
alias gitt='git tag -s'
alias gg='cd ~/git'
alias u='cd ~/Uber'

alias lint='npm run lint 2> /dev/null'
alias watch='npm run watch'
alias b='yarn build'
alias t='yarn test'

alias scaffold='git config --local user.name TheScaffolder && git config --local user.email spam@forpurpose.io && git commit --amend --author "TheScaffolder <spam@forpurpose.io>" && git config --local --unset user.email && git config --local --unset user.name'
alias linus='git config --local user.name "Linus Torvalds" && git config --local user.email torvalds@linux-foundation.org && git commit --amend --author "Linus Torvalds <torvalds@linux-foundation.org>" && git config --local --unset user.email && git config --local --unset user.name'

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

function gifify() {
  ffmpeg -i "$1" -vf scale=800:-1 -r 10 -f image2pipe -vcodec ppm - |\
  convert -delay 5 -layers Optimize -loop 0 - "$2"
}
