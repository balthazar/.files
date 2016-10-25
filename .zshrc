# Zsh
# ---
ZSH=$HOME/.oh-my-zsh
CASE_SENSITIVE="true"
plugins=(git zsh-syntax-highlighting)

# Source
# ------
source $ZSH/oh-my-zsh.sh
source $HOME/.profile
source $HOME/.gitprompt

eval $(thefuck --alias)
