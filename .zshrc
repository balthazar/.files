# Zsh
# ---
ZSH=$HOME/.oh-my-zsh
CASE_SENSITIVE="true"
plugins=(git zsh-syntax-highlighting)

# Path
# ----
if [[ `uname` == 'Darwin' ]]; then
  export PATH=/nfs/sgoinfre/goinfre/Perso/bgronon/.brew/bin:$PATH
  export NVM_DIR=~/.nvm
fi

# Source
# ------
source $ZSH/oh-my-zsh.sh
source $HOME/.profile
source $HOME/.gitprompt
source $(brew --prefix nvm)/nvm.sh
