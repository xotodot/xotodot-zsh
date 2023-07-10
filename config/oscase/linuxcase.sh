############
# LINUXBREW
############
# export PATH="$HOME/.linuxbrew/bin:$PATH"
# export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
# export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"export PATH="/usr/local/opt/helm@2/bin:$PATH"
# tmux -f ~/.config/.tmux/.tmux.conf new -A -s xoto || tmux

#######
# ALIAS
#######

alias open="xdg-open $1"
alias bat="bat $1 --theme=GitHub --paging=never --style=changes"
alias cat="bat $1 --theme=GitHub --paging=never --style=changes"


alias idea=open -na "IntelliJ IDEA.app" --args "$@"
