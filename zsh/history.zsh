## Command history configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Append to history file, rather than replace it.
setopt append_history

setopt extended_history

setopt hist_expire_dups_first

# Do not enter command lines into the history list if they are duplicates of the previous event.
setopt hist_ignore_dups

# Do not store in history commands beginning with a space.
setopt hist_ignore_space

setopt hist_verify

# New history lines are added to $HISTFILE as soon as they are entered.
setopt inc_append_history

# Share command history data
setopt share_history
