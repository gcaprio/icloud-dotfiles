export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/opt/mysql-client@8.0/bin:/opt/homebrew/sbin:"$HOME/Library/Application Support/Herd/bin":$PATH

set -o vi

export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
setopt autocd
autoload -U compinit; compinit


# My Aliases
alias l='ls -lFh'     #size,show type,human readable
alias ll='ls -l'      #long list
alias grep='rg --color=auto'  #use rg for grep with color'

# Git
alias ga='git add'
alias gb='git branch'
alias gcam='git commit --all --message'
alias gc='git commit --verbose'
alias gca='git commit --verbose --all'
alias gd='git diff'
alias gp='git push'

# Docker Aliases
alias dcup='docker-compose up -d'
alias dcdn='docker-compose down'

eval "$(starship init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

if command -v ngrok &>/dev/null; then
 eval "$(ngrok completion)"
fi

llm_diff() {
  local branch="${1:-origin/main}"
  local outfile="${2:-llm_diff.txt}"

  (
    echo "### Diff vs ${branch}"
    echo
    git diff \
      --patch-with-stat \
      --find-renames \
      --diff-algorithm=histogram \
      "${branch}...HEAD"
  ) > "${outfile}"

  echo "Saved diff to ${outfile}"
}

# rbenv
eval "$(rbenv init -)"

# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/gcaprio/Library/Application Support/Herd/config/php/82/"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/gcaprio/Library/Application Support/Herd/config/php/83/"

# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/gcaprio/Library/Application Support/Herd/config/php/84/"

# Herd injected NVM configuration
#export NVM_DIR="/Users/gcaprio/Library/Application Support/Herd/config/nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#
#[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

if [[ -z "$CLAUDECODE" ]]; then
    # do not enable SCM breeze within claude code sessions
    [ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"
fi

# Auto suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Setup zoxide. Must come at the END
eval "$(zoxide init zsh)"
