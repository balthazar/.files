# Zsh
# ---
ZSH=$HOME/.oh-my-zsh
CASE_SENSITIVE="true"
plugins=(git zsh-syntax-highlighting)
setopt HIST_IGNORE_ALL_DUPS

# Paths
# -----

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/.ebcli-virtual-env/executables

export PATH=$PATH:~/Library/Python/2.7/bin
export PATH=./node_modules/.bin:$PATH

# Source
# ------
source $ZSH/oh-my-zsh.sh
source $HOME/.profile
source $HOME/git/.files/.gitprompt

source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"

# hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000064,"HIDKeyboardModifierMappingDst":0x70000002B}]}'

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# added by travis gem
[ -f /Users/apercu/.travis/travis.sh ] && source /Users/apercu/.travis/travis.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath+=${ZDOTDIR:-~}/.zsh_functions

export FZF_DEFAULT_COMMAND='fd -I -H -E node_modules -E .git -t f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
