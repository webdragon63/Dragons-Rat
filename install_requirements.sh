#!/bin/bash
echo "Checking For Root User...."
sleep 1
if [[ $(id -u) -ne 0 ]] ; then 
   echo "You are Not Root! Please Run as root" ; exit 1 ; 
fi
echo -e "\033[0;33m"
echo "Executing apktool installer ..."
cp -r apktool /usr/local/bin
cp -r apktool /usr/local/sbin
cp -r apktool.jar /usr/local/bin
cp -r apktool.jar /usr/local/sbin
cp -r apktool /usr/sbin
cp -r apktool.jar /usr/sbin
chmod +x /usr/local/bin/apktool.jar
chmod +x /usr/local/sbin/apktool.jar
chmod +x /usr/local/bin/apktool
chmod +x /usr/local/sbin/apktool
chmod +x /usr/sbin/apktool
chmod +x /usr/sbin/apktool.jar
echo "Installing apksigner ..."
apt install apksigner -y
echo "Installation Complete ..."
sleep 1
echo -e "\033[0;33mNow you are able to\033[0;37m bind payloads\033[0;33m with any apk"
