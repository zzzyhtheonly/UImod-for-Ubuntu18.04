#!/bin/bash
source /home/johnazhang/UImod/ui.config

gsettings set org.gnome.desktop.wm.preferences button-layout ${BUTTON_LAYOUT:-"close,maximize,minimize:"}
gsettings set org.gnome.desktop.background picture-uri ${BACKGROUND_URI:-"file:///usr/share/backgrounds/background.jpg"}
gsettings set org.gnome.desktop.interface cursor-theme ${CURSOR_THEME:-"DMZ-Black"}
gsettings set org.gnome.desktop.interface gtk-theme ${GTK_THEME:-"HighContrast"}
gsettings set org.gnome.desktop.interface icon-theme ${ICON_THEME:-"DMZ-Black"}
gsettings set org.gnome.desktop.screensaver color-shading-type ${SCREENSAVER_COLOR_SHADING_TYPE:-"solid"}
gsettings set org.gnome.desktop.screensaver picture-options ${SCREENSAVER_PICTURE_OPTIONS:-"zoom"}
gsettings set org.gnome.desktop.screensaver picture-uri  ${SCREENSAVER_URI:-"file:///usr/share/backgrounds/lockscreen.jpg"}
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed ${DOCK_FIXED:-"false"}
gsettings set org.gnome.shell.extensions.dash-to-dock autohide ${DOCK_AUTOHIDE:-"false"}
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide ${DOCK_INTELLIHIDE:-"false"}
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position ${DOCK_POSITION:-"BOTTOM"}
gsettings set org.gnome.desktop.interface clock-show-date ${SHOW_DATE:-"true"}
gsettings set org.gnome.desktop.sound theme-name ${SOUND_THEME:-"gnome"}
gsettings set org.gnome.shell enabled-extensions ${EXTENSIONS:-"['hidetopbar@mathieu.bidon.ca', 'dash-to-panel@jderose9.github.com']"}
