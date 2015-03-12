# Zsh
# ---
ZSH=$HOME/.oh-my-zsh
CASE_SENSITIVE="true"
plugins=(git zsh-syntax-highlighting)

# Path
# ----
if [[ `uname` == 'Darwin' ]]; then
  export PATH=$HOME/.brew/bin:$PATH
  export PATH=$HOME/local/bin:$PATH
  export PATH=$HOME/bin:$PATH
  export PATH=$PATH:/usr/local/bin
fi

# Source
# ------
source $ZSH/oh-my-zsh.sh
source $HOME/.profile
source $HOME/.gitprompt
