#!/bin/bash

if [ ! -f "backup.config" ]
then
	echo "Not installed yet!!! Please install first."
	exit 1
fi

###
#if [ -f "rc-local_bak.service" ]
#then
#        sudo mv -f rc-local_bak.service "/etc/systemd/system/rc-local.service"
#fi
#
#if [ -f "rc_bak.local" ]
#then
#        sudo mv -f rc_bak.local "/etc/rc.local"
#fi

#sudo systemctl disable rc-local
###

sudo mv -f /usr/share/gnome-shell/theme/ubuntu_bak.css /usr/share/gnome-shell/theme/ubuntu.css
sudo mv -f /usr/share/plymouth/ubuntu-logo_bak.png /usr/share/plymouth/ubuntu-logo.png 
sudo mv -f /usr/share/backgrounds/warty-final-ubuntu_bak.png /usr/share/backgrounds/warty-final-ubuntu.png
sudo rm -f ~/.config/autostart/setupx.desktop

sed -i "2c source ${PWD}/backup.config" setx.sh
sed -i "2c source ${PWD}/backup.config" setPlymouth.sh
./setx.sh
./setPlymouth.sh

#sudo rm -f ~/.config/autostart/tint2.desktop
#sudo apt remove -y tint2

#sudo rm -rf /usr/share/plymouth/themes/pisi-color/

sudo rm -rf backup.config
