#!/bin/bash

apt install gnupg1 apt-transport-https dirmngr
export INSTALL_KEY=379CE192D401AB61
# Ubuntu versions supported: xenial, bionic
# Debian versions supported: jessie, stretch, buster
export DEB_DISTRO=$(lsb_release -sc)
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY
echo "deb https://ookla.bintray.com/debian ${DEB_DISTRO} main" | tee  /etc/apt/sources.list.d/speedtest.list
apt update
# Other non-official binaries will conflict with Speedtest CLI
# Example how to remove using apt-get
# apt remove speedtest-cli
apt install speedtest
