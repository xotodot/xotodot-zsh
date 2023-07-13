##########################################
# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
##########################################
# 🔥 be sure to link the ~/.zsh to this file by adding this line in your root zsh :
# source ~/.config/zsh/.zshrc
##########################################

#############
# ENVIRONMENT
#############

export ZDOTDIR=$HOME/.config # DOT FILE DIR
export PATH="/usr/local/opt/man-db/libexec/bin:$PATH"
# export PATH=$HOME/bin:/usr/local/bin:$PATH # LOCAL
# export PATH=/bin:/usr/bin:$PATH # USR
export ZSH=$HOME/.oh-my-zsh # Path oh-my-zsh installation

######################
# ZSH PLUGINS SETTINGS
######################

autoload -Uz compinit && compinit -d "$HOME"/.config/zsh/.zcompdump/.zcompdump

if [[ -z "$ZSH_COMPDUMP" ]]; then
  ZSH_COMPDUMP="$HOME/.config/zsh/.zcompdump/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
fi

source $ZSH/oh-my-zsh.sh

##########
# ZSH INIT
##########
# export PATH="usr/bin/gunzip:$PATH"

source "$HOME/.config/zsh/config/zsh.sh" # ZSH

# add these lines:
# export PATH="$PATH:$HOME/npm/bin"
export NODE_PATH="$NODE_PATH:$HOME/npm/lib/node_modules"

#########
# ANTIGEN
#########

source "$HOME/.config/antigen.zsh" # ANTIGEN
antigen init "$HOME/.config/zsh/.antigenrc" # LOAD ANTIGEN
source "$HOME/.config/zsh/config/antigen.sh" # ANTIGEN

####################
# 10K THEME SETTINGS
####################

# source "$HOME/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme"

# SOURCE
# [[ ! -f $HOME/.config/.p10k/.p10k.zsh ]] || source $HOME/.config/.p10k/.p10k.zsh

# # enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc. Initialization code that may require console input (password prompts, [y/n] confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

######
# FZF
######

# PLUGINS
# [ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
# [ -f $HOME/.asdf/asdf.sh ] && . $HOME/.asdf/asdf.sh
# [ -f $HOME/.asdf/completions/asdf.bash ] && . $HOME/.asdf/completions/asdf.bash

# export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
# --color=fg:#c0caf5,bg:#1a1b26,hl:#bb9af7
# --color=fg+:#c0caf5,bg+:#1a1b26,hl+:#7dcfff
# --color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff
# --color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a'

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=fg:#2e2e2e,bg:#ffffff,hl:#1a1a1a
 --color=fg+:#333333,bg+:#ededed,hl+:#333333
 --color=info:#000000,prompt:#d7005f,pointer:#af5fff
 --color=marker:#c56bdb,spinner:#af5fff,header:#87afaf'
 
#####################
# BASIC UNIX SETTINGS
#####################

# source "$HOME/.config/zsh/config/zsh-vi-mode.sh" # ZSH-VI-MODE
source <(cat "$HOME"/.config/zsh/config/alias/list/*)                                              # ALIAS ALIASES
[ -f $HOME/.config/zsh/config/history.sh ] && source "$HOME/.config/zsh/config/history.sh"         # HISTORY
[ -f $HOME/.config/zsh/config/alias/main.sh ] && source "$HOME/.config/zsh/config/alias/main.sh"   # MAIN ALIASES
[ -f $HOME/.config/zsh/config/alias/alias.sh ] && source "$HOME/.config/zsh/config/alias/alias.sh" # MAIN ALIASES
[ -f $HOME/.config/zsh/config/ssh.sh ] && source "$HOME/.config/zsh/config/ssh.sh"                 # SSH
[ -f $HOME/.config/zsh/config/exports.sh ] && source "$HOME/.config/zsh/config/exports.sh"         # EXPORTS
[ -f $HOME/.config/zsh/config/completions.sh ] && source "$HOME/.config/zsh/config/completions.sh" # COMPLETIONS
[ -f $HOME/.config/zsh/config/bindkeys.sh ] && source "$HOME/.config/zsh/config/bindkeys.sh"       # COMPLETIONS

export KITTY_CONFIG_DIRECTORY="~/.config/kitty"
export BAT_CONFIG_PATH="~/.config/bat/bat.conf"
# export SPACESHIP_CONFIG="$HOME/.config/spaceship.zsh"
# source "$HOME/.config/spaceship.zsh"

##########
# AUTOJUMP
##########

[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source "$HOME/.autojump/etc/profile.d/autojump.sh"

############
# OS CASES
############

[ -f $HOME/.config/zsh/config/oscase/oscase.sh ] && source "$HOME/.config/zsh/config/oscase/oscase.sh" # OSCASE

case $(uname -a) in
*Microsoft*)
  OS="WSL"
  [ -f $HOME/.config/zsh/config/oscase/windowcase.sh ] && source "$HOME/.config/zsh/config/oscase/windowcase.sh" # WINDOWCASE
  ;;
*microsoft*)
  OS="WSL2"
  [ -f $HOME/.config/zsh/config/oscase/windowcase.sh ] && source "$HOME/.config/zsh/config/oscase/windowcase.sh" # WINDOWCASE
  ;;
Linux*)
  OS="Linux"
  [ -f $HOME/.config/zsh/config/oscase/linuxcase.sh ] && source "$HOME/.config/zsh/config/oscase/linuxcase.sh" # LINUXCASE
  ;;
Darwin*)
  OS="Mac"
  [ -f $HOME/.config/zsh/config/oscase/maccase.sh ] && source "$HOME/.config/zsh/config/oscase/maccase.sh" # MACCASE
  ;;
CYGWIN*)
  OS="Cygwin"
  ;;
MINGW*)
  OS="Windows"
  [ -f $HOME/.config/zsh/config/oscase/windowcase.sh ] && source "$HOME/.config/zsh/config/oscase/windowcase.sh" # WINDOWCASE
  ;;
*Msys)
  OS="Windows"
  [ -f $HOME/.config/zsh/config/oscase/windowcase.sh ] && source "$HOME/.config/zsh/config/oscase/windowcase.sh" # WINDOWCASE
  ;;
*)
  OS="UNKNOWN:${unameOut}"
  ;;
esac

# # export PATH="usr/bin/gunzip:$PATH"

# export PATH=/usr/bin:/bin
# export PATH="$HOME/.local/bin:$PATH"

eval `ssh-agent -s` > /dev/null
ssh-add ~/.ssh/mac/id_rsa_xotosphere 2>/dev/null