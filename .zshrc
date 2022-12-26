# Homebrew Autocomplete Setup
 if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=/Users/gcaprio/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git, autopep8, common-aliases, fabric, osx, pip, pyenv, pylint, python, supervisor, vagrant, vi-mode, virtualenvwrapper, zsh-syntax-highlighting)
plugins=(git autopep8 common-aliases macos vi-mode zsh-syntax-highlighting ruby rails rvm asdf)

# User configuration
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/postgresql@14/bin:"

source $ZSH/oh-my-zsh.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias upgrade_oh_my_zsh="omz update"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias obsvimon="defaults write md.obsidian ApplePressAndHoldEnabled -bool false"
alias obsvimoff="defaults write md.obsidian ApplePressAndHoldEnabled -bool true"
alias config='/usr/bin/git --git-dir=$HOME/.config/.git/ --work-tree=$HOME'
alias rtest='RAILS_ENV=test rspec spec'

# git aliases
alias gs="git status"
alias gpm="git push origin master"
alias gbd="git branch -d"
alias gu="git up"

# Turbo charge by overwriting some basic commands
alias cat='bat'
alias pcat='bat -p'
alias ping='prettyping --nolegend'
alias top='htop'
alias man='tldr'
alias grep='rg'

# Shopify Aliases
alias sts='shopify theme serve'
alias sl='f() { shopify login --store=$1 };f'


# Enable Vi mode
bindkey -v
export KEYTIMEOUT=1

export VISUAL=vim
export EDITOR="$VISUAL"

export PROJECT_HOME=$HOME/source

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Make people can find postgresql libs
export LDFLAGS="-L/usr/local/opt/postgresql@13/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@13/include"
export PKG_CONFIG_PATH="/usr/local/opt/postgresql@13/lib/pkgconfig"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable zoxide
eval "$(zoxide init zsh)"

[ -s "/Users/gcaprio/.scm_breeze/scm_breeze.sh" ] && source "/Users/gcaprio/.scm_breeze/scm_breeze.sh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

if [ $ITERM_SESSION_ID ]; then
precmd() {
  echo -ne "\033]0;${PWD##*/}\007"
}
fi

# To customize prompt, run `p10k configure` or edit ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/dotfiles/.p10k.zsh.
[[ ! -f ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/dotfiles/.p10k.zsh ]] || source ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/dotfiles/.p10k.zsh
