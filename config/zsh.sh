# zsh config
UPDATE_ZSH_DAYS=10
DISABLE_UNTRACKED_FILES_DIRTY="false"
COMPLETION_WAITING_DOTS=" %F{yellow}waiting... "
HYPHEN_INSENSITIVE="false"
DISABLE_AUTO_UPDATE="true"
# DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="false"
CASE_SENSITIVE="false"
HIST_STAMPS="dd.mm.yyyy"
# ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=("${(@)ZSH_AUTOSUGGEST_ACCEPT_WIDGETS:#forward-char}")
# zsh autosuggest
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion history) # history
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="spaceship"


# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#333955, bg=#626c99,regular"

# automatically start tmux
# ZSH_TMUX_AUTOSTART=false # only autostart once. if set to false, tmux will attempt to autostart every time your zsh configs are reloaded.
# ZSH_TMUX_AUTOSTART_ONCE=false # automatically connect to a previous session if it exists
# ZSH_TMUX_AUTOCONNECT=false # automatically close the terminal when tmux exits
# ZSH_TMUX_AUTOQUIT=$ZSH_TMUX_AUTOSTART # set term to screen or xterm-256color based on current terminal support
# ZSH_TMUX_FIXTERM=true

# zstyle ':omz:update' mode auto # ZSH UPDATE

# set ZSH_AUTOSUGGEST_USE_ASYNC
# set '-cc' option for iterm2 tmux integration
# ZSH_TMUX_ITERM2=false
# # the term to use for non-256 color terminals. tmux states this should be screen, but you may need to change it on systems without the proper terminfo
# ZSH_TMUX_FIXTERM_WITHOUT_256COLOR=xterm
# the term to use for 256 color terminals. tmux states this should be xterm-256color, but you may need to change it on systems without the proper terminfo
# ZSH_TMUX_FIXTERM_WITH_256COLOR="xterm-256color"
# VI_MODE_SET_CURSOR=true
# autocmd VimEnter * silent exec "! echo -ne '\e[1 q'"
# autocmd VimLeave * silent exec "! echo -ne '\e[5 q'" 