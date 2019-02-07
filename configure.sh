#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install libttspico-utils
pico2wave -w ~/startupcomplete.wav "Startup is complete"
pico2wave -w ~/noaudiofile.wav "No matching audio file found"
echo ~/.bashrc >> aplay ~/startupcomplete.wav
echo ~/.bashrc >> bash ~/cardnspeak.sh
