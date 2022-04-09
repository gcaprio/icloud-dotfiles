# ZSH
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Git Setup
    git clone --bare git@github.com:gcaprio/config.git $HOME/.config/.git
    alias config='/usr/bin/git --git-dir=/Users/gcaprio/.config/.git --work-tree=$HOME'
    config config --local status.showUntrackedFiles no

Source: https://www.ackama.com/blog/posts/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained#footnote-1

# Add SSH Keys
    chmod 600 ~/.ssh/<private keys>
    ssh-add ~/.ssh <private_key>

# Powerlevel10k Theme
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    Install MesloLGS NF fonts

# Syntax
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# vi configuration 
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vi 
    :PluginInstall

# scm_breeze
    git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
    ~/.scm_breeze/install.sh

# RVM
    Install from: https://rvm.io

# Show external media
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

# Show All File Extensions
defaults write -g AppleShowAllExtensions -bool true

# Show status Bar
defaults write com.apple.finder ShowStatusBar -bool true

# Sets default save target to be a local disk, not iCloud
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false

# Enable Develop Menu and Web Inspector
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write -g WebKitDeveloperExtras -bool true

# Use Plain Text Mode as Default
defaults write com.apple.TextEdit RichText -int 0

# Show the ~/Library folder
chflags nohidden ~/Library/

# Tweak the Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock orientation bottom
#defaults write com.apple.dock wvous-br-corner -int 5
#defaults write com.apple.dock wvous-tr-corner -int 4
#defaults write com.apple.Dock size-immutable -bool yes
#defaults write com.apple.dock tilesize -int 0

# Restart the Dock and the UI server
killall Dock
killall SystemUIServer
