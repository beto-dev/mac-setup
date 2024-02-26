#!/bin/bash

echo "Installing apps..."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew --version
brew update
brew bundle
brew list

echo "Done"
