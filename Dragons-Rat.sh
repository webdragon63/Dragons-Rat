#!/bin/bash
echo "Checking For Root User...."
sleep 1
if [[ $(id -u) -ne 0 ]] ; then 
   echo "You are Not Root! Please Run as root" ; exit 1 ; 
else echo "Checking For Requirement Packages.." ; 
fi


pkgs=(metasploit-framework)
for pkg in ${pkgs[@]}
do
 sudo apt install $pkg
done
sleep 1
clear

echo "Required Packages Has Been Installed Sucessfully"

# Function to display the menu
show_menu() {
    clear
    echo -e "\033[0;37m"
echo "      ____  ____      _    ____  ___  _   _ ____        ____      _  _____ "
echo "     |  _ \|  _ \    / \  / ___|/ _ \| \ | / ___|      |  _ \    / \|_   _|"
echo "     | | | | |_) |  / _ \| |  _| | | |  \| \___ \ _____| |_) |  / _ \ | |  "
echo "     | |_| |  _ <  / ___ \ |_| | |_| | |\  |___) |_____|  _ <  / ___ \| |  "
echo "     |____/|_| \_\/_/   \_\____|\___/|_| \_|____/      |_| \_\/_/   \_\_|  "
echo -e "\033[0;31m     ____________________A SIMPLE PAYLOAD CREATOR TOOL_____________________"
echo -e "\033[0;29m                               FOR ANDROID ONLY"
    echo -e "\033[0;37m                           MADE BY:INDIAN CYBER ARMY"
    echo -e "\033[0;34m          YOUTUBE CHANNEL: https://www.youtube.com/@indiancyberarmy5"
    echo -e "\033[0;29m"
    echo -e "\033[0;37m [1]\033[0;29m Create A Payload"
    echo -e "\033[0;37m [2]\033[0;29m Bind A Payload"
    echo -e "\033[0;37m [3]\033[0;29m Create A Listener For A Previous Payload"
    echo -e "\033[0;37m [0]\033[0;31m EXIT"
    echo -e "\033[0;36m"
    echo -n " Please select an option: "
}

# Function to handle the user's selection
handle_choice() {
    case $1 in
        1) bash src/fun_a.sh;;
        2) bash src/fun_b.sh;;
        3) bash src/fun_c.sh;;
        0) echo "Exiting..."; exit 0;;
        *) echo "Invalid option";;
    esac
}

# Main loop to show the menu and handle choices
while true; do
    show_menu
    read choice
    handle_choice $choice
    echo -e "\nPress any key to return to the menu..."
    read -n 1
done
