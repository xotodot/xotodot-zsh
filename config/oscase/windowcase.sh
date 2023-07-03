
############
# TMUX
############

# check if we are in WSL
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
    session_name="xoto"
    tmux -f ~/.config/.tmux/.tmux.conf has-session -t=$session_name 2> /dev/null
    if [[ $? -ne 0 ]]; then
      TMUX='' tmux -f ~/.config/.tmux/.tmux.conf new-session -d -s "$session_name"
    fi
    if [[ -z "$TMUX" ]]; then
      tmux -f ~/.config/.tmux/.tmux.conf attach -t "$session_name"
    else
      tmux -f ~/.config/.tmux/.tmux.conf switch-client -t "$session_name"
    fi
fi

############
# ENVIROMENT
############

export PATH=$PATH:/mnt/c/Program\ Files/Microsoft\ VS\ Code/bin/
export PATH=$PATH:/mnt/c/Windows

#######
# ALIAS
#######
alias open="explorer.exe $1"
