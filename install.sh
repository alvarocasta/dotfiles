#!/bin/sh
source utils/utils.sh

# BREW
if test ! $(which brew); then
  e_header "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  e_header "Updating Homebrew"
  brew update
fi
e_success "brew updated done!"


e_header "Setting exports"
ln -sf "$(pwd)/.exports" ~/.exports
e_success "exports setup done!"

e_header "Setting aliases"
ln -sf "$(pwd)/.aliases" ~/.aliases
e_success "aliases setup done!"

e_header "Setting private template"
cp "$(pwd)/.private.template" ~/.private.template
e_success "private setup done!"

e_header "Setting gitconfig"
ln -sf "$(pwd)/.gitconfig" ~/.gitconfig
e_success "gitconfig setup done!"

e_header "Setting zshrc"
ln -sf "$(pwd)/.zshrc" ~/.zshrc
e_success "zshrc setup done!"

# ZSH plugins
git clone https://github.com/lukechilds/zsh-better-npm-completion ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-better-npm-completion
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Sotftware update
e_success "Launching software update..."
softwareupdate -ia

read -p "Do you want to reboot your mac? [y|N] " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
  exit 1
else
  sudo reboot
fi

