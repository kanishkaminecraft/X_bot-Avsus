#!/bin/bash
m="\e[0;31m"   # red
k="\e[0;33m"   # yellow
h="\e[0;32m"   # green
b="\e[0;34m"   # blue
lm="\e[1;31m"  # pink
lk="\e[1;33m"  # bright yellow
lh="\e[1;32m"  # light green
lb="\e[1;34m"  # blue sky
n="\e[0m"      # neutral
w="\e[1;37m"   #thick white

clear
echo -e "
$h
             |	  ____   _    _ ____      ____   ____  ____
           __|__ |____|   \  / |____     |____  |____ |
          |__|_	 |    |    \/   ____|     ____| |____ |____ . B/W
          ___|_|
             | INSTALLER .SH
             | $h
"

echo -e "$m [ + ] INSTALLING ADB ...$m "
sudo apt install adb
echo ""
echo -e "$lm [ + ] INSTALLING RUBY$lm"
sudo apt install ruby -y
echo ""
echo -e "$b[ + ] INSTALING LOLCAT$b"
gem install lolcat
echo ""
echo -e "$h[ + ] INSTALLING FESTIVAL TOOL$h"
sudo apt install festival
echo ""
echo ""
echo "[+] ALL DATA IS INSTALLED KINDLE CLOSE THE INSTALLER AND RUN THE ACTUAL CODE :-)"
