# NON XOTO ALIAS - MAIN

alias lsd='ranger'
alias tmux="tmux -T RGB"
alias lg="lazygit"
alias ld="lazydocker"
alias lnp="lazynpm"
alias lk="lazykubernetes"
alias n="nvim"
alias cdf="j"
alias cdd="exa --tree $1"
alias cds="fd --type f --hidden --exclude .git | fzf-tmux -p80%,80% --color border:\#323957 --reverse --ansi --preview-window noborder --preview-window 'right:60%' --preview 'bat --theme=GitHub --paging=never --style=changes {}' | xargs nvim"

# NOTES
# alias fcd="cd \$(find . -type d -not -path './node_modules/*' | fzf)"
# alias ncd="nvim \$(find . -type f -not -path './node_modules/*' | fzf --ansi --preview-window noborder --preview-window 'right:60%' --preview 'batcat --color=always --style=numbers,changes --line-range :300 {}')"
# alias cat="batcat"
