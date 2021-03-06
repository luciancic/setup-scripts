 
#!/bin/bash
# Setup my computer with software needed for development

# Git gud
./setup_git.sh

# Docker and setup for use without sudo
./setup_docker.sh

# NodeJS and yarn
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt-get install -y nodejs
npm install -g yarn

# VS Code and Slack
apt-get install -y snapd
# Add classic flag to allow installation of snap that may perform system changes outside usual snap sandbox
snap install code --classic
snap install slack --classic
