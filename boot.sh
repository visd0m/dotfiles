#!/usr/bin/env bash

# install brew/brew-cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/versions

# make sure we’re using the latest Homebrew
brew update

# upgrade any already-installed formulae
brew upgrade

# save Homebrew’s installed location
BREW_PREFIX=$(brew --prefix)

# git
brew install git
brew install git-flow

# java-ish
brew cask install java
brew install clojure

# utilities
brew install jq
brew install fzf
brew install sshuttle
brew install antigen

# gui apps
brew cask install atom
brew cask install google-chrome
brew cask install spectacle
brew cask install telegram

# set zsh as default shell
chsh -s $(which zsh)

# set macos defaults
source macosdefaults.sh

# symlink needed files
for DOTFILE in `find ~/dotfiles/to-symlink`
do
  [ -f “$DOTFILE” ] && ln -sv “$DOTFILE” ~
done
