#!/bin/bash

sudo apt install -y gnome-shell-extensions
sudo apt install -y gnome-shell-extension-dash-to-panel
sudo apt install -y gnome-shell-extension-dashtodock

###
#if [ -f "/etc/systemd/system/rc-local.service" ]
#then
#	sudo cp -f "/etc/systemd/system/rc-local.service" rc-local_bak.service
#fi
#
#if [ -f "/etc/rc.local" ]
#then
#        sudo cp -f "/etc/rc.local" rc_bak.local
#fi
###

if [ ! -d ~/.config/autostart ]
then
	mkdir ~/.config/autostart
fi

sed -i "4c Exec=${PWD}/setx.sh" setupx.desktop
#sed -i "13c ${PWD}/setUbuntuCss.sh /usr/share/gnome-shell/theme/ubuntu.css" rc.local
sed -i "2c source ${PWD}/ui.config" setx.sh
#sed -i "2c source ${PWD}/ui.config" setUbuntuCss.sh
sed -i "2c source ${PWD}/ui.config" setPlymouth.sh

sudo cp -f /usr/share/gnome-shell/theme/ubuntu.css /usr/share/gnome-shell/theme/ubuntu_bak.css
sudo cp -f ubuntu.css /usr/share/gnome-shell/theme/ubuntu.css

###
#sudo cp -f "rc-local.service" "/etc/systemd/system/rc-local.service"
#sudo cp -f "rc.local" "/etc/rc.local"
#sudo chmod +x "/etc/rc.local"
#sudo systemctl enable rc-local
#sudo systemctl start rc-local.service
###

sudo cp -f setupx.desktop ~/.config/autostart/
sudo chmod +x *.sh

sudo chmod +r tencent.png
sudo chmod +r *.jpg
sudo cp -f *.jpg /usr/share/backgrounds/
sudo cp -f /usr/share/backgrounds/warty-final-ubuntu.png /usr/share/backgrounds/warty-final-ubuntu_bak.png
sudo cp -f lockscreen.jpg /usr/share/backgrounds/warty-final-ubuntu.png
sudo mv -f /usr/share/plymouth/ubuntu-logo.png /usr/share/plymouth/ubuntu-logo_bak.png
sudo cp -f tencent.png /usr/share/plymouth/ubuntu-logo.png 

./getx.sh

#sudo dpkg -i tint2_16.2-1_amd64.deb
#sudo cp -f tint2.desktop ~/.config/autostart/

if [ ! -d /usr/share/plymouth/themes/tencent-logo ]
then
	sudo cp -rf tencent-logo/ /usr/share/plymouth/themes/
fi
./setPlymouth.sh
