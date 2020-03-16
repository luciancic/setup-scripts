#!/bin/bash
# Increase number of file watchers to ensure
# smooth development of large projects


echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
