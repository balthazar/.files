#         .-'--.
#       .'      '.
#      /     _    `-.
#     /      .\-     \,  ,
#    ;       .-|-'    \####,
#    |,       .-|-'    ;####
#   ,##         `     ,|###"
# #,####, "#,        ,#|^;#
# `######  `#####,|##" |`)|      ----------------
#  `#####    ```o\`\o_.| ;\      Perfect .profile
#   (-`\#,    .-'` |`  : `;      ----------------
#   `\ ;\#,         \   \-'      1.0
#     )( \#    C,_   \   ;
#     (_,  \  /   `'./   |
#       \  / | .-`'--'`. |
#        | ( \   ,  /_,  |
#        \    `   ``     /
#         '-.__     // .'
#              `'`.__.'

# Custom
# ------
chmod 000 ~/Library/Caches/Google/Chrome/Default/Media\ Cache 2> /dev/null
chmod 000 ~/Library/Caches/Google/Chrome/Default/Cache 2> /dev/null
chmod 000 ~/Library/Caches/com.google.Software 2> /dev/null

# Path
# ----
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH
export PATH=~/.gems/bin:$PATH
export PATH=~/ruby-2.1.0/bin:$PATH
export PATH=$HOME/.brew/bin:$PATH
export PATH=$HOME/.brew/opt/ruby/bin:$PATH
export PATH=$HOME/.brew/opt/nginx/sbin:$PATH
export SECRET_KEY_BASE="!#zavatta_secret_string!"
export PATH="~/Documents/ImageMagick-6.8.8/bin:$PATH"
export PATH=~/.brew/bin:$PATH
export PATH=$PATH:$HOME/mamp/mysql/bin
LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+$LD_LIBRARY_PATH:}$MAGICK_HOME/lib"
export LD_LIBRARY_PATH
export GEM_HOME=~/.gems

# Variables
# ---------
export PS1=$'%{\e[0;34m%}[%m %~] %{\e[m%}'
export MAIL='bgronon@student.42.fr'
export MAIL42='bgronon@student.42.fr'
export USER42='bgronon'
export LANG="en_GB.UTF-8"
export LANGUAGE="en_GB:en"

# Aliases
# -------
alias correc="cd ~/Correction"
alias editsnip="vim ~/.vim/bundle/ultisnips/UltiSnips/c.snippets"
alias prof='vim ~/.profile'
alias sprof='source ~/.profile'
alias lt='ls -lt'
alias pb=" tr -d '\n' | pbcopy"
alias gits='git status'
alias gitf='git flow'
alias gitp="git push"
alias gg='cd ~/git'

# Funcs
# -----
function gitcom() { git commit -am "$@" ;}
function count() { find "$@" -name '*.c' | xargs wc -l ;}
function emacs() { printf "No !\n" && vim "$@" ;}
function look() { printf "\n# [LOOKING FOR : $@]\n|\n" && ldapsearch -Q uid="$@" | grep -e "^mobile-phone" | sed 's/mobile-phone:/|/' && printf "| $@@student.42.fr\n" && wget -qO - http://dashboard.42.fr/crawler/pull/$@ | grep -o 'last_host": [^ .]\+' | sed 's/last_host": "/| /g' && printf "|\n# [END] \n\n" ;}
function screen1() { j=0;a=1;x=1;y=1;xd=1;yd=1;while true;do for i in {1..2000} ; do if [[ $x == $LINES || $x == 0 ]]; then xd=$(( $xd *-1 )) ; fi ; if [[ $y == $COLUMNS || $y == 0 ]]; then yd=$(( $yd * -1 )) ; fi ; x=$(( $x + $xd )); y=$(( $y + $yd )); printf "\33[%s;%sH\33[48;5;%sm`date '+%H:%M:%S'`\33[0m" $x $y $(( $a % 8 + 16 + $j % 223 )) ;a=$(( $a + 1 )) ; done ; x=$(( x%$COLUMNS + 1 )) ; j=$(( $j + 8 )) ;done ;}

# Dirs
# ----
alias libft="cd ~/libft"
alias ftls="cd ~/Rendu/UNIX-1-001/ft_ls"
alias ftprintf="cd ~/Rendu/ALGO-1-001/printf"
alias fdf="cd ~/Rendu/INFOG-1-001/FdF"
alias hotrace="cd ~/Rendu/ALGO-1-001/hotrace"
alias ftprintf="cd ~/Rendu/ALGO-1-001/printf"
alias wolf="cd ~/Rendu/INFOG-1-001/wolf3d"
alias rtv1="cd ~/Rendu/INFOG-1-001/rtv1"
alias ftselect="cd ~/Rendu/UNIX-1-001/select"
alias filler="cd ~/Rendu/ALGO-1-001/filler"
alias lemin="cd ~/Rendu/ALGO-1-001/lemin"
alias sh2="cd ~/Rendu/UNIX-1-001/sh2"
alias sh3="cd ~/Rendu/UNIX-1-001/sh3"
alias 42sh="cd ~/Rendu/UNIX-1-001/42sh"
export ODIN_ROOT=/nfs/zfs-student/users/2013/bgronon/bin
export PATH=/nfs/zfs-student/users/2013/bgronon/bin/bin:$PATH
