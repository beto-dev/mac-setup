#!/bin/bash

echo "Setting ssh config..."

cd ~/.ssh && 
ssh-keygen -t rsa -b 4096 -C "alb.tejos.dev@gmail.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/github
pbcopy < ~/.ssh/github.pub

echo "$(<~/.ssh/github.pub)"
echo "Public key copied to clipboard"
echo "Done"