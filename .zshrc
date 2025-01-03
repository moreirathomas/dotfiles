# The default oh-my-zsh configuration file is located at
# $ZSH/templates/zshrc.zsh-template.

# Path to the dotfiles folder.
export DOTFILES="$HOME/.dotfiles"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(brew git macos thefuck)

source $ZSH/oh-my-zsh.sh

# User configuration

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR=code

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/docs/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Load custom functions
source "$DOTFILES/.functions"

# Add binaries installed with `go install` to PATH - https://go.dev/doc/gopath_code
export PATH=$PATH:$(go env GOPATH)/bin

# bun completions
[ -s "/Users/moreirathomas/.bun/_bun" ] && source "/Users/moreirathomas/.bun/_bun"

# fzf completions
eval "$(fzf --zsh)"

# Setup Zoxide
eval "$(zoxide init zsh)"

# Setup shell to use Starshiph.
eval "$(starship init zsh)"