#         .-'--.
#       .'      '.
#      /     _    `-.
#     /      .\-     \,  ,
#    ;       .-|-'    \####,
#    |,       .-|-'    ;####
#   ,##         `     ,|###"
# #,####, "#,        ,#|^;#
# `######  `#####,|##" |`)|      --------------
#  `#####    ```o\`\o_.| ;\      Perfect .zshrc
#   (-`\#,    .-'` |`  : `;      --------------
#   `\ ;\#,         \   \-'      1.0
#     )( \#    C,_   \   ;
#     (_,  \  /   `'./   |
#       \  / | .-`'--'`. |
#        | ( \   ,  /_,  |
#        \    `   ``     /
#         '-.__     // .'
#              `'`.__.'

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
export ODIN_ROOT=/nfs/zfs-student/users/2013/bgronon/bin
export PATH=/nfs/zfs-student/users/2013/bgronon/bin/bin:$PATH

# Source
# ------
source $ZSH/oh-my-zsh.sh
source $HOME/.profile
source $HOME/.gitprompt
alias lockscreen_block="lockscreen && sleep 2 && /Volumes/DATA/42/madagascar"
