if [ "$(ls -A /media/usb/*.[mM][pP]3)" ];then        
  aplay ~/copyingfiles.wav
  cp /media/usb/*.[mM][pP]3 ~
  rename 'y/A-Z/a-z/' ~/*.*
  aplay ~/copyingcomplete.wav
fi
aplay ~/startupcomplete.wav
bash ~/cardnspeak.sh
