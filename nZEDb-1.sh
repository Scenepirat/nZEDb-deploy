#!/bin/bash
# Script Name: nZEDb Setup - Part 1
# Author: PREngineer - pianistapr@hotmail.com
# License: Personal Use (1 device)
# IMPORTANT: RUN THIS SCRIPT FIRST!
# This Script contains the Pre-requisites
# Before the first reboot.
#############################################

# Color definition variables
YELLOW='\e[33;3m'
RED='\e[91m'
BLACK='\033[0m'
CYAN='\e[96m'
GREEN='\e[92m'

# Make sure to clear the Terminal
clear

# Display the Title Information
echo 
echo -e $RED
echo -e "         nZEDb"
echo -e "╦╔╗╔╔═╗╔╦╗╔═╗╦  ╦  ╔═╗╦═╗"
echo -e "║║║║╚═╗ ║ ╠═╣║  ║  ║╣ ╠╦╝"
echo -e "╩╝╚╝╚═╝ ╩ ╩ ╩╩═╝╩═╝╚═╝╩╚═"

echo -e $CYAN
echo -e "Brought to you by PREngineer | Fork by Scenepirat"
echo
echo -e $GREEN'nZEDb Server Setup'$BLACK
echo 

echo -e $RED'1. This script has been tested on Ubuntu 14.4 (Server).'
echo -e '2. The author(s) cannot be held accountable for any problems that might occur if you run this script.'
echo -e '3. Proceed only if you authorize this script to make changes to your system.'$BLACK
echo

echo -e $YELLOW
echo -e "---> [Updating System...]"$BLACK
sudo apt-get update > /dev/null
sudo apt-get -y upgrade > /dev/null
sudo apt-get -y dist-upgrade > /dev/null
echo -e $GREEN
echo -e "DONE!"

echo -e $YELLOW
echo -e "---> [Installing Basic Software...]"$BLACK
sudo apt-get install -y nano curl git htop man software-properties-common unzip wget tmux ntp ntpdate time tcptrack bwm-ng mytop -y > /dev/null
sudo python3 -m easy_install pip > /dev/null
echo -e $GREEN
echo -e "DONE!"

echo -e $YELLOW
echo -e "---> [Install ffmpeg, mediainfo, p7zip-full, unrar and lame...]"$BLACK
curl http://ffmpeg.gusari.org/static/64bit/ffmpeg.static.64bit.latest.tar.gz | tar xfvz - -C /usr/local/bin && \
sudo apt-get install -y unrar-free lame mediainfo p7zip-full > /dev/null
echo -e $GREEN
echo -e "DONE!"

echo -e $YELLOW
echo -e "---> [Installing Pyton 3 and Modules...]"$BLACK
sudo apt-get install -y python-setuptools software-properties-common python3-setuptools python3-pip python-pip && \
python -m easy_install pip  && \
easy_install cymysql && \
easy_install pynntp && \
easy_install socketpool && \
pip list && \
python3 -m easy_install pip && \
pip3 install cymysql && \
pip3 install pynntp && \
pip3 install socketpool && \
pip3 list > /dev/null
echo -e $GREEN
echo -e "DONE!"



