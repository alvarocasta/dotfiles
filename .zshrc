# Path to your oh-my-zsh installation.
export ZSH="/Users/acastaneda/.oh-my-zsh"

ZSH_THEME="agnoster"

# ZSH plugins
plugins=(
git
zsh-autosuggestions
zsh-better-npm-completion
zsh-completions
zsh-syntax-highlighting
)

autoload -Uz compinit && compinit

# Loads NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Loads AVN
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn


source $HOME/.exports
source $HOME/.aliases
source $HOME/.bash_profile

source $HOME/.private

source $ZSH/oh-my-zsh.sh


