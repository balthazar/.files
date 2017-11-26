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

source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
