######################################################
################### << BINDKEY >> ####################
######################################################

# # AUTOSUGGEST BINDKEY
# bindkey '⇧⌥␢' end-of-line
# bindkey '^[OM' end-of-line
# bindkey '' end-of-line
# bindkey '^I' end-of-line

# COMPLETE
bindkey '<Right>' autosuggest-accept
bindkey '^I' complete-word       # tab          | complete
bindkey '^[[Z' autosuggest-accept  # shift + tab  | autosuggest

# # HISTORY BINDKEY
bindkey '^[[B' history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[3~' backward-kill-line

# clear2 () {
# zle clear-screen
# }
# zle -N clear2
# bindkey -s "^\e/C" clear2


# bindkey -e
# bindkey \^u backward-kill-line

# bindkey '^c' backward-kill-line 
# bindkey -e
# bindkey \^S backward-kill-line

# ~/.zshrc
# clear-scrollback-and-screen () {
#   zle clear-screen
#   tmux clear-history
# }
# zle -N clear-scrollback-and-screen
# bindkey -v '^S' clear-scrollback-and-screen

# REFFERENCES
# HTML ENTITY     GLYPH  NAME
# &#63743;              Apple
# &#8984;         ⌘      Command, Cmd, Clover, (formerly) Apple
# &#8963;         ⌃      Control, Ctl, Ctrl
# &#8997;         ⌥      Option, Opt, (Windows) Alt
# &#8679;         ⇧      Shift
# &#8682;         ⇪      Caps lock
# &#9167;         ⏏      Eject
# &#8617;         ↩      Return, Carriage Return
# &#8629; &crarr; ↵      Return, Carriage Return
# &#9166;         ⏎      Return, Carriage Return
# &#8996;         ⌤      Enter
# &#9003;         ⌫      Delete, Backspace
# &#8998;         ⌦      Forward Delete
# &#9099;         ⎋      Escape, Esc
# &#8594; &rarr;  →      Right arrow
# &#8592; &larr;  ←      Left arrow
# &#8593; &uarr;  ↑      Up arrow
# &#8595; &darr;  ↓      Down arrow
# &#8670;         ⇞      Page Up, PgUp
# &#8671;         ⇟      Page Down, PgDn
# &#8598;         ↖      Home
# &#8600;         ↘      End
# &#8999;         ⌧      Clear
# &#8677;         ⇥      Tab, Tab Right, Horizontal Tab
# &#8676;         ⇤      Shift Tab, Tab Left, Back-tab
# &#9250;         ␢      Space, Blank
# &#9251;         **␣**  Space, Blank




# vim: set ts=4:
# Copyright 2022-present Jakub Jirutka <jakub@jirutka.cz>.
# SPDX-License-Identifier: MIT
#
# Emacs shift-select mode for Zsh - select text in the command line using Shift
# as in many text editors, browsers and other GUI programs.
#
# Version: 0.1.1
# Homepage: <https://github.com/jirutka/zsh-shift-select>

# Move cursor to the end of the buffer.
# This is an alternative to builtin end-of-buffer-or-history.
# function end-of-buffer() {
# 	CURSOR=${#BUFFER}
# 	zle end-of-line -w  # trigger syntax highlighting redraw
# }
# zle -N end-of-buffer

# # Move cursor to the beginning of the buffer.
# # This is an alternative to builtin beginning-of-buffer-or-history.
# function beginning-of-buffer() {
# 	CURSOR=0
# 	zle beginning-of-line -w  # trigger syntax highlighting redraw
# }
# zle -N beginning-of-buffer

# # Kill the selected region and switch back to the main keymap.
# function shift-select::kill-region() {
# 	zle kill-region -w
# 	zle -K main
# }
# zle -N shift-select::kill-region

# # Deactivate the selection region, switch back to the main keymap and process
# # the typed keys again.
# function shift-select::deselect-and-input() {
# 	zle deactivate-region -w
# 	# Switch back to the main keymap (emacs).
# 	zle -K main
# 	# Push the typed keys back to the input stack, i.e. process them again,
# 	# but now with the main keymap.
# 	zle -U "$KEYS"
# }
# zle -N shift-select::deselect-and-input

# # If the selection region is not active, set the mark at the cursor position,
# # switch to the shift-select keymap, and call $WIDGET without 'shift-select::'
# # prefix. This function must be used only for shift-select::<widget> widgets.
# function shift-select::select-and-invoke() {
# 	if (( !REGION_ACTIVE )); then
# 		zle set-mark-command -w
# 		zle -K shift-select
# 	fi
# 	zle ${WIDGET#shift-select::} -w
# }

# function {
# 	emulate -L zsh

# 	# Create a new keymap for the shift-selection mode.
# 	bindkey -N shift-select

# 	# Bind all possible key sequences to deselect-and-input, i.e. it will be used
# 	# as a fallback for "unbound" key sequences.
# 	bindkey -M shift-select -R '^@'-'^?' shift-select::deselect-and-input

# 	local kcap seq seq_mac widget

# 	# Bind Shift keys in the emacs and shift-select keymaps.
# 	for	kcap   seq          seq_mac    widget (             # key name
# 		kLFT   '^[[1;2D'    x          backward-char        # Shift + LeftArrow
# 		kRIT   '^[[1;2C'    x          forward-char         # Shift + RightArrow
# 		kri    '^[[1;2A'    x          up-line              # Shift + UpArrow
# 		kind   '^[[1;2B'    x          down-line            # Shift + DownArrow
# 		kHOM   '^[[1;2H'    x          beginning-of-line    # Shift + Home
# 		x      '^[[97;6u'   x          beginning-of-line    # Shift + Ctrl + A
# 		kEND   '^[[1;2F'    x          end-of-line          # Shift + End
# 		x      '^[[101;6u'  x          end-of-line          # Shift + Ctrl + E
# 		x      '^[[1;6D'    '^[[1;4D'  backward-word        # Shift + Ctrl/Option + LeftArrow
# 		x      '^[[1;6C'    '^[[1;4C'  forward-word         # Shift + Ctrl/Option + RightArrow
# 		x      '^[[1;6H'    '^[[1;4H'  beginning-of-buffer  # Shift + Ctrl/Option + Home
# 		x      '^[[1;6F'    '^[[1;4F'  end-of-buffer        # Shift + Ctrl/Option + End
# 	); do
# 		# Use alternative sequence (Option instead of Ctrl) on macOS, if defined.
# 		[[ "$OSTYPE" = darwin* && "$seq_mac" != x ]] && seq=$seq_mac

# 		zle -N shift-select::$widget shift-select::select-and-invoke
# 		bindkey -M emacs ${terminfo[$kcap]:-$seq} shift-select::$widget
# 		bindkey -M shift-select ${terminfo[$kcap]:-$seq} shift-select::$widget
# 	done

# 	# Bind keys in the shift-select keymap.
# 	for	kcap   seq        widget (                          # key name
# 		kdch1  '^[[3~'    shift-select::kill-region         # Delete
# 		bs     '^?'       shift-select::kill-region         # Backspace
# 	); do
# 		bindkey -M shift-select ${terminfo[$kcap]:-$seq} $widget
# 	done
# }