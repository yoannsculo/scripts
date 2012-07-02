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

DEV_DIR=~/dev

PROJECTS_LIST="git@github.com:yoannsculo/blog.git \
	       git@github.com:yoannsculo/SHOUTcast-Recorder.git \
	       git@github.com:yoannsculo/growl.git
	       git@github.com:yoannsculo/foxg20-gpio.git \
	       git@github.com:yoannsculo/Speaker.git \
	       git@github.com:yoannsculo/config.git \
	       git@github.com:yoannsculo/ucblog.git"

echo "Do you want to install personal projects ? (Y/N) y"

cd $DEV_DIR
for i in $PROJECTS_LIST; do
	git clone $i
done
cd -
