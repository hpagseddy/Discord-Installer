#!/usr/bin/env bash
# Preparation
cd ~/
mkdir -p ~/.local/bin
mkdir -p ~/.local/share/applications/

# curl Setup
if ! which curl > /dev/null; then
	echo Trying to install curl
	sudo apt-get install curl
fi

# Latest Discord
curl -L "https://discord.com/api/download?platform=linux&format=tar.gz" --output "discord.tar.gz"
tar -xvf discord.tar.gz -C ~/.local/bin
sudo ln -s ~/.local/bin/Discord/discord.png /usr/share/icons/discord.png
sudo ln -s ~/.local/bin/Discord/Discord /usr/bin

# Main Menu Config
echo "[Desktop Entry]
Name=Discord
StartupWMClass=discord
Comment=All-in-one voice and text chat for gamers that's free, secure, and works on both your desktop and phone.
GenericName=Internet Messenger
Exec=Discord
Type=Application
Terminal=false
Icon=/usr/share/icons/discord.png
Categories=Network;InstantMessaging;" > ~/discord.desktop
mv ~/discord.desktop ~/.local/share/applications/
sudo ln -s ~/.local/share/applications/discord.desktop /usr/share/applications/discord.desktop
