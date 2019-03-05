#!/bin/bash

while :
do
       echo "Please scan"
       read SCANNEDCARD
       if [ -e $SCANNEDCARD.mp3 ]
       then
               mpg123 $SCANNEDCARD.mp3
       else
               aplay noaudiofile.wav
       fi
done
