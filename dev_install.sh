#!/bin/bash

# Script used to install a brand new system / dev environment

################################################################################
# Install packages
################################################################################

DEV_LIST="git gitk \
	 subversion esvn \
	 meld vim ctags \
	 ddd minicom filezilla \
	 mplayer"

NETWORK_LIST="openssh-server"

sudo apt-get install $DEV_LIST
sudo apt-get install $NETWORK_LIST

################################################################################
# Install vim config
################################################################################

# rm ~/.vimrc ~/vim
# ln -s

# Install bash config

# Install

################################################################################
# Install projets
################################################################################

echo "Do you want to install personal projects ? (Y/N) y"
