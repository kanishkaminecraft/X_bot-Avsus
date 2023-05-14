#!/bin/bash

echo -e "${lb}
                        _       ___     ______            
                       | |     / \ \   / / ___| _   _ ___ 
                      / __)   / _ \ \ / /\___ \| | | / __|
                      \__ \  / ___ \ V /  ___) | |_| \__ /
                      (   / /_/   \_\_/  |____/ \__,_|___/
                       |_|$version
${n}" | lolcat
echo -e "\n\n\n"
echo -e "${lb}
                      +-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+
                      |E|f|f|o|r|t|l|e|s|s| |l|i|v|i|n|g|
                      +-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+

$version
${n}" | lolcat
sudo su
echo "[+] DOWNLOADING REQUIRMENTS..."
sudo apt install adb
sudo apt intall snap
sudo apt install nmap
sudo apt install lolcat
echo "[-] INSTALLATION COMPLETELY."
