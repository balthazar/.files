# Path
# ----
export PATH=$HOME/.brew/bin:$PATH
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$PATH:/usr/local/bin

# Variables
# ---------
export PS1=$'%{\e[0;34m%}%T %{\e[0m%}[%?] %{\e[0;34m%}%~ %{\e[0m%}'
export MAIL='bgronon@student.42.fr'
export MAIL42='bgronon@student.42.fr'
export USER42='bgronon'

# Aliases
# -------
alias snips="cd ~/.vim/bundle/ultisnips/ultiSnips"
alias prof='vim ~/.profile'
alias sprof='source ~/.profile'
alias l='ls -la'
alias lt='ls -lt'
alias pb=" tr -d '\n' | pbcopy"
alias gits='git status'
alias gitf='git flow'
alias gitp="git push"
alias gitc="git commit"
alias gg='cd ~/git'
alias rendu="cd ~/rendu"

# Funcs
# -----
function count() { find "$@" -name '*.c' | xargs wc -l ;}
function emacs() { printf "No !\n" && vim "$@" ;}
function look() { printf "\n# [LOOKING FOR : $@]\n|\n" && ldapsearch -Q uid="$@" | grep -e "^mobile-phone" | sed 's/mobile-phone:/|/' && printf "| $@@student.42.fr\n" && wget -qO - http://dashboard.42.fr/crawler/pull/$@ | grep -o 'last_host": [^ .]\+' | sed 's/last_host": "/| /g' && printf "|\n# [END] \n\n" ;}
