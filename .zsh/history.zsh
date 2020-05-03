###
# History
###

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt extended_history         # timestamp the history and more
setopt append_history           # allow multiple sessions to append to one history
setopt hist_ignore_all_dups
setopt hist_find_no_dups        # ignore duplicates when searching
setopt hist_expire_dups_first   # expire duplicates first
setopt hist_reduce_blanks       # trim blanks
setopt share_history            # share history among sessions
setopt inc_append_history       # Write to history file immediately, not when shell quits
setopt bang_hist                # treat ! special during command expansion
unsetopt hist_beep

