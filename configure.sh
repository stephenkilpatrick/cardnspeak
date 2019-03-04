#!/bin/bash

sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get install -y libttspico-utils debhelper
git clone https://github.com/rbrito/usbmount.git
cd usbmount
sudo dpkg-buildpackage -us -uc -b
cd ~
sudo apt install ./usbmount_0.0.24_all.deb
pico2wave -w ~/startupcomplete.wav "Startup is complete"
pico2wave -w ~/noaudiofile.wav "No matching audio file found"
pico2wave -w ~/copyingfiles.wav "Copying files from USB drive"
pico2wave -w ~/copyingcomplete.wav "Copying complete."
cat bashrc ~/.bashrc
cp cardnspeak.sh ~
