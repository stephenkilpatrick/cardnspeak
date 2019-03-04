#!/bin/bash

sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get install -y libttspico-utils
pico2wave -w ~/startupcomplete.wav "Startup is complete"
pico2wave -w ~/noaudiofile.wav "No matching audio file found"
pico2wave -w ~/copyingfiles.wav "Copying files from USB drive"
pico2wave -w ~copyingcomplete.wav "Copying complete."
echo aplay ~/startupcomplete.wav >> ~/.bashrc
echo bash ~/cardnspeak.sh >> ~/.bashrc
cp cardnspeak.sh ~
