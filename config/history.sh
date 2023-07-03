######################################################
############### << HISTORY >> ########################
######################################################

# HISTORY
HIST_STAMPS="mm/dd/yyyy"
HISTSIZE=200000
SAVEHIST=200000

# HISTORY OPTIONS
setopt hist_ignore_all_dups     # remove older duplicate entries from history
setopt hist_reduce_blanks       # remove superfluous blanks from history items
setopt inc_append_history       # save history entries as soon as they are entered
setopt share_history            # share history between different instances
setopt hist_verify              # show before executing history commands
setopt hist_save_nodups					# save without dups
setopt share_history						# share history
unsetopt hist_ignore_space      # ignore space prefixed commands

# ZSH PECO HISTORY
ZSH_PECO_HISTORY_OPTS="--layout=bottom-up --initial-filter=Fuzzy"
