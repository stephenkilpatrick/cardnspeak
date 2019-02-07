#!/bin/bash

while :
do
       echo "Please scan"
       read SCANNEDCARD
       if [ -e $SCANNEDCARD.mp3 ]
       then
               aplay $SCANNEDCARD.mp3
       else
               aplay noaudiofile.mp3
       fi
done
