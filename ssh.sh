#!/bin/bash

echo "Setting ssh config..."

mkdir -p ~/.ssh && 
cd ~/.ssh && 
ssh-keygen -t rsa -b 4096 -C "alb.tejos.dev@gmail.com" && 
eval "$(ssh-agent -s)" && 
ssh-add -K ~/.ssh/github && 
pbcopy < ~/.ssh/github.pub && 
touch ~/.ssh/config && 
echo 'Host HOSTNAME\nAddKeysToAgent yes\nUseKeychain yes\nIdentityFile ~/.ssh/github' > config

echo "$(<~/.ssh/github.pub)"
echo "Public key copied to clipboard"
echo "Done"
