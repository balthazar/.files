# Zsh
# ---
ZSH=$HOME/.oh-my-zsh
CASE_SENSITIVE="true"
plugins=(git zsh-syntax-highlighting)

# Paths
# -----

export PATH=./node_modules/.bin:$PATH
export PATH=$PATH:~/Library/Android/sdk/platform-tools

# Source
# ------
source $ZSH/oh-my-zsh.sh
source $HOME/.profile
source $HOME/.gitprompt

eval $(thefuck --alias)
