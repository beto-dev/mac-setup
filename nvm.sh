#!/bin/bash

echo "Setting nvm config..."

. $(brew --prefix nvm)/nvm.sh
nvm --version &&
nvm install node &&
nvm use node &&
node -v && npm -v &&
nvm install node --reinstall-packages-from=node &&

echo "Done"