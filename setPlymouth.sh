#!/bin/bash
source /home/johnazhang/UImod/ui.config

sudo ln -sf ${PLYMOUTH:-"/usr/share/plymouth/themes/tencent-logo/tencent-logo.plymouth"} /etc/alternatives/default.plymouth
sudo update-initramfs -u 
