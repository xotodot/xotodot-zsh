# # VI MODE
# bindkey -v
# export KEYTIMEOUT=1

# # Change cursor shape for different vi modes.

# function zle-keymap-select {
#   if [[ ${KEYMAP} == vicmd ]] ||
#      [[ $1 = 'block' ]]; then
#     echo -ne '\e[1 q'
#     # echo -ne "\033]12;Green1\007"
#   elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
#     echo -ne '\e[5 q'
#     # echo -ne "\033]12;white\007"
#   fi
# }

# # zle -N zle-line-init

# # bindkey -v

# zle -N zle-keymap-select

# # echo -ne '\e[5 q' # Use beam shape cursor on startup.
# # preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# # zle-line-init() {
# #   zle reset-prompt
# #     # zle -K viins
# #     # echo -ne "\e[5 q"
# # }

# # zle -N zle-line-init

# # zle-line-init() { zle -K vicmd; }
# # zle -N zle-line-init

# echo -ne '\e[5 q' 
# 	# echo -ne "\033]12;white\007"

# preexec() { 
#   echo -ne '\e[5 q' ;
#     # echo -ne "\033]12;white\007"
#   } 



# # Use vim editing mode in terminal [escape to enter normal mode]
# bindkey -v

# # zmodload zsh/zle
# # autoload -U colors && colors
# #  zle reset-prompt

# # export PURE_PROMPT_SYMBOL="[I] ❯"
# # export PURE_PROMPT_VICMD_SYMBOL="%{$fg[green]%}[N] ❮%{$reset_color%}"
# export RPROMPT="%{$fg[yellow]%}[INSERT]%{$reset_color%}"
# #  zle reset-prompt

# # function zle-line-init {
# #     # VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
# #     # RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
# #     zle reset-prompt
# # }

# # zle -N zle-line-init

# echo -ne '\e[5 q\e]12;white\a'

# function zle-keymap-select () {
#     if [ "$TERM" = "xterm-256color" ] || [ "$TERM" = "xterm-kitty" ] || [ "$TERM" = "screen-256color" ]; then
#         if [ $KEYMAP = vicmd ]; then
#             export RPROMPT="%{$fg[red]%}[NORMAL]%{$reset_color%}"
#             echo -ne '\e[1 q\e]12;white\a'
#         else
#             export RPROMPT="%{$fg[yellow]%}[INSERT]%{$reset_color%}"
#                         echo -ne '\e[5 q\e]12;white\a'
#         fi
#     fi
#     # if typeset -f prompt_pure_update_vim_prompt_widget > /dev/null; then
#     #     prompt_pure_update_vim_prompt_widget
#     # fi
# }

# zle -N zle-keymap-select


# zle-line-init() {
    

# # # zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)

# # echo -ne '\e[5 q\e]12;white\a';

# # zle reset-prompt
#     # VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#     # RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
#         #    export RPROMPT="%{$fg[yellow]%}[INSERT]%{$reset_color%}"
#                         echo -ne '\e[5 q\e]12;white\a'
#     # zle reset-prompt/

# }

# zle -N zle-line-init

# export KEYTIMEOUT=1

# preexec() { echo -ne '\e[5 q\e]12;white\a';} # Use beam shape cursor for each new prompt.








# ### Activate vi / vim mode:
# # bindkey -v

# # # Remove delay when entering normal mode (vi)
# # KEYTIMEOUT=5

# # # Change cursor shape for different vi modes.
# # function zle-keymap-select {
# #   if [[ $KEYMAP == vicmd ]] || [[ $1 = 'block' ]]; then
# #     echo -ne '\e[1 q'
# #   elif [[ $KEYMAP == main ]] || [[ $KEYMAP == viins ]] || [[ $KEYMAP = '' ]] || [[ $1 = 'beam' ]]; then
# #     echo -ne '\e[5 q'
# #   fi
# # }
# # zle -N zle-keymap-select

# # # Start with beam shape cursor on zsh startup and after every command.
# # zle-line-init() { 
  
# #   zle-keymap-select 'main'
# #   source ~/.antigen/bundles/zsh-users/zsh-history-substring-search/zsh-history-substring-search.zsh


# # # source ${0:h}/external/zsh-history-substring-search.zsh || return 1

# # # Binding ^[[A/^[[B manually mean up/down works with history-substring-search both before and after zle-line-init
# # bindkey '^[[A' history-substring-search-up
# # bindkey '^[[B' history-substring-search-down
# #   }


# # # NOTES : 

# # # antigen bundle jeffreytse/zsh-vi-mode
# # # function zvm_config() {
# # # 	ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT	# ZVM_OPPEND_MODE_CURSOR
# # # 	ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
# # # 	ZVM_CURSOR_STYLE_ENABLED=true
# # # 	ZVM_READKEY_ENGINE=$ZVM_READKEY_ENGINE_DEFAULT
# # # 	ZVM_LAZY_KEYBINDINGS=truea
# # #   local ncur=$(zvm_cursor_style $ZVM_NORMAL_MODE_CURSOR)
# # #   local icur=$(zvm_cursor_style $ZVM_INSERT_MODE_CURSOR)
# # #   ZVM_INSERT_MODE_CURSOR=$icur'\e\e]12;#BD617D\a'
# # #   ZVM_NORMAL_MODE_CURSOR=$ncur'\e\e]12;#BD9561\a'
# # # 	ZVM_INIT_MODE=sourcing
# # # }
# # # zvm_config

# # # zvm_after_init_commands+=('source $HOME/.config/zsh/config/completions.sh')
# # # zvm_before_init_commands=()
# # # zvm_after_init_commands=()
# # # zvm_before_select_vi_mode_commands=()
# # # zvm_after_select_vi_mode_commands=()
# # # zvm_before_lazy_keybindings_commands=()
# # # zvm_after_lazy_keybindings_commands=()
# # # ZVM_VI_HIGHLIGHT_EXTRASTYLE=bold,underline    
