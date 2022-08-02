# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

# ZSH plugins
plugins=(
    git
    npm
    bgnotify
    zsh-autosuggestions
    zsh-better-npm-completion
    zsh-completions
    zsh-syntax-highlighting
)

autoload -Uz compinit && compinit

source $HOME/.exports
source $HOME/.aliases
source $HOME/.private

eval "$(fnm env --use-on-cd)"  # This loads fnm

eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh