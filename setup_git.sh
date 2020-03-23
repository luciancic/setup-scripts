#!/bin/bash 

# Install git and create SSH key for GitHub

# Install
apt-get install -y git

# Configure git
git config --global user.name "Lucian Condrea"
git config --global user.email lucian@condrea.dev

# Setup SSH
ssh-keygen -t rsa -b 4096 -C lucian@condrea.dev
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Copy public key
apt-get install -y xclip
xclip -sel clip < ~/.ssh/id_rsa.pub

# Prompt me to add my key
echo "~~~

Almost there! Public key loaded into your clipboard. Just paste the tasty data in:
https://github.com/settings/ssh/new

~~~

"
