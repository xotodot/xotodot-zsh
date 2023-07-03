############################################################
###### PROMPT AUTOSUGGEST, BINKEYS AND COMPLETIONS #########
############################################################

# DOTFILE SET OPT - COMPLETIONS OPTIONS

setopt auto_cd
setopt noautolist
setopt auto_menu
setopt correct_all
setopt correct
setopt always_to_end
setopt interactive_comments
setopt path_dirs
setopt auto_list
setopt auto_param_slash
setopt extended_glob
setopt hash_list_all
setopt complete_in_word
setopt no_flow_control
setopt list_ambiguous
setopt auto_param_keys
setopt auto_pushd
setopt equals
setopt list_packed
setopt list_types
setopt mark_dirs
setopt magic_equal_subst
setopt no_hup
setopt noautoremoveslash
setopt nolistbeep
setopt prompt_subst
setopt auto_remove_slash

unsetopt bgnice autoparamslash
unsetopt menu_complete
unsetopt rm_star_silent

# some useful options (man zshoptions)
# setopt autocd extendedglob nomatch menucomplete
# setopt interactive_comments
# stty stop undef		# Disable ctrl-s to freeze terminal.
# zle_highlight=('paste:none')

######################################################
########### << PROMPT END - REFFERENCES >> ###########
######################################################

