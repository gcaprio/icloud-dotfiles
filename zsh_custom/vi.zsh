# Enable Vi mode
bindkey -v
# This sets how long zsh waits after you press Esc before switching to normal mode. 
# The default is 0.4 seconds (400ms), but this setting reduces it to 0.1 seconds (100ms) making the mode switch feel more responsive.
export KEYTIMEOUT=1

# Set default text editors
export VISUAL=nvim
export EDITOR="$VISUAL"
