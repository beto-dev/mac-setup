#!/bin/bash

echo "Installing apps..."

if test ! "$(which brew)"; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew --version
brew update
brew bundle
brew list

echo "Done"
