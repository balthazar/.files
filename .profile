# Variables
# ---------
export PS1=$'%{\e[0;34m%}%T%{\e[0m%} %{\e[0;34m%}[%{\e[0m%}%{\e[0;32m%}%n%{\e[0m%}%{\e[0;30m%}:%{\e[0m%}%{\e[0;36m%}%m%{\e[0m%}%{\e[0;34m%}]%{\e[0m%} %{\e[0;34m%}%~ %{\e[0m%}'
export MAIL='me@balthazar.dev'
export LANG='en_US.UTF-8'
export EDITOR='vim'
export GPG_TTY=$(tty)
export TERM=xterm

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
alias gre='grep -rni'
alias dado='ssh me@balthazar.dev'
alias bigdaddy='ssh root@dash.ashlar.io'
alias feh='feh --conversion-timeout 1'

alias l='ls -lah'
alias mpv='mpv --input-ipc-server=/tmp/mpvsocket'

alias gits='git status'
alias gitc='git commit'
alias gita='git add'
alias gitk='git checkout'
alias gitp='git push'
alias pull='git pull'
alias gitt='git tag -s'
alias g='cd ~/git'
alias a='cd ~/git/ashlar'
alias dl='cd ~/Downloads'

alias lint='eslint src'
alias watch='npm run watch'
alias s='yarn start'
alias b='yarn build'
alias t='yarn test'

alias scaffold='git config --local user.name TheScaffolder && git config --local user.email spam@forpurpose.io && git commit --amend --author "TheScaffolder <spam@forpurpose.io>" && git config --local --unset user.email && git config --local --unset user.name'

if [[ `uname` == 'Linux' ]]; then
  alias pbcopy='xsel --clipboard --input'
  alias u='yay -Syyu'
fi

# Functions
# ---------

function y() { yarn $@ --ignore-engines }
function whitescale() { convert $@.png -channel RGB -fuzz 99% -fill white -opaque black $@-white.png ;}

if [[ $(uname) == 'Linux' ]]; then
  function off() { sudo shutdown 0 ;}
fi

function dcheck() {
  for d in $@
  do
    echo -n "$d - "
    res=`whois $d`
    echo "$res" | grep 'Expiry Date' || echo "available"
    echo ""
  done
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
