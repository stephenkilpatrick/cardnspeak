#!/bin/bash
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install libttspico-utils
pico2wave -w ~/startupcomplete.wav "Startup is complete."
