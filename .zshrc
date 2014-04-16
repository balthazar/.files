# Yep
# ---
ZSH=$HOME/.oh-my-zsh
DEFAULT_USER="bgronon"
ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
plugins=(git)

# Path
# ----
export PATH=$HOME/local/bin:$PATH
export PATH=/usr/local/heroku/bin:$PATH
export PATH=/usr/local/git/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/opt/X11/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/sbin:$PATH
export PATH=/bin:$PATH
export PATH=~/bin:$PATH

# Source
# ------
source $ZSH/oh-my-zsh.sh
source $HOME/.profile
source $HOME/git/myawesome-config/.gitprompt
