#!/bin/sh

# minimal bootstrapping before kicking off ansible:
#  install only what ansible needs to survive, or doesn't know how to do
grep -i "release 7" /etc/redhat-release || exit 0
sudo yum -y install python2 python2-yum libselinux-python
