#!/bin/bash
# Install Docker
# Based on documentation from https://docs.docker.com/install/linux/docker-ce/ubuntu/

apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io

# Add docker group to be able to run commands without sudo

usermod -aG docker dev
newgrp docker
 
