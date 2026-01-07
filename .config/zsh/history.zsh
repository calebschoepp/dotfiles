export HISTFILE=~/.zsh_history  # where to store zsh config
export HISTSIZE=1000000000      # big history
export SAVEHIST=1000000000      # big history
setopt append_history           # append
setopt hist_ignore_all_dups     # no duplicate
setopt hist_ignore_space        # ignore space prefixed commands
setopt hist_reduce_blanks       # trim blanks
setopt hist_verify              # show before executing history commands
setopt inc_append_history       # add commands as they are typed, don't wait until shell exit
# setopt share_history          # share hist between sessions
setopt bang_hist                # !keyword
setopt hist_save_no_dups        # Do not write a duplicate event to the history file.
setopt hist_no_store            # Don't store history commands
setopt extended_history         # Write the history file in the ':start:elapsed;command' format.
HISTORY_IGNORE="(ls|cd|pwd|exit|cd)*" # commands to ignore in history
