#!/usr/bin/env bash
echo ""
echo "Updating APT and installing required dependencies"
apt update && apt install curl -y && apt install openjdk-11-jdk -y && apt install unzip -y && apt install bc && apt install p7zip-full -y
echo ""

echo "Creating non-root account"
echo ""
read -p "Enter New Username:" x
adduser ${x}
echo""

echo"Downloading Qortal Core"
su ${x} && cd /home/${x} && wget https://github.com/Qortal/qortal/releases/latest/download/qortal.zip && unzip qortal.zip && cd qortal
echo""

echo"Starting Qortal Core"
chmod +x *.sh && ./start.sh



echo "Installation COMPLETE! You can now Open Qortal UI and Enjoy blockchain technology!"
