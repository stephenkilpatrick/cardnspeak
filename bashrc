if [ "$(ls -A /media/usb/*.[mM][pP]3)" ];then        
  mpg123 ~/copyingfiles.mp3
  cp /media/usb/*.[mM][pP]3 ~
  rename 'y/A-Z/a-z/' ~/*.*
  mpg123 ~/copyingcomplete.mp3
fi
mpg123 ~/startupcomplete.mp3
bash ~/cardnspeak.sh
