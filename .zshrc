# Zsh
# ---
ZSH=$HOME/.oh-my-zsh
CASE_SENSITIVE="true"
plugins=(git zsh-syntax-highlighting)

# Path
# ----
if [[ `uname` == 'Darwin' ]]; then
  export PATH=/nfs/2013/b/bgronon/goinfre/.brew/bin:$PATH
fi

# Source
# ------
source $ZSH/oh-my-zsh.sh
source $HOME/.profile
source $HOME/.gitprompt
