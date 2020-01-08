#!/bin/bash

touch backup.config

BUTTON_LAYOUT=`gsettings get org.gnome.desktop.wm.preferences button-layout`
echo "BUTTON_LAYOUT=${BUTTON_LAYOUT}" >> backup.config

BACKGROUND_URI=`gsettings get org.gnome.desktop.background picture-uri`
echo "BACKGROUND_URI=${BACKGROUND_URI}" >> backup.config

CURSOR_THEME=`gsettings get org.gnome.desktop.interface cursor-theme`
echo "CURSOR_THEME=${CURSOR_THEME}" >> backup.config

GTK_THEME=`gsettings get org.gnome.desktop.interface gtk-theme`
echo "GTK_THEME=${GTK_THEME}" >> backup.config

ICON_THEME=`gsettings get org.gnome.desktop.interface icon-theme`
echo "ICON_THEME=${ICON_THEME}" >> backup.config

SCREENSAVER_COLOR_SHADING_TYPE=`gsettings get org.gnome.desktop.screensaver color-shading-type`
echo "SCREENSAVER_COLOR_SHADING_TYPE=${SCREENSAVER_COLOR_SHADING_TYPE}" >> backup.config

SCREENSAVER_PICTURE_OPTIONS=`gsettings get org.gnome.desktop.screensaver picture-options`
echo "SCREENSAVER_PICTURE_OPTIONS=${SCREENSAVER_PICTURE_OPTIONS}" >> backup.config

SCREENSAVER_URI=`gsettings get org.gnome.desktop.screensaver picture-uri`
echo "SCREENSAVER_URI=${SCREENSAVER_URI}" >> backup.config

DOCK_FIXED=`gsettings get org.gnome.shell.extensions.dash-to-dock dock-fixed`
echo "DOCK_FIXED=${DOCK_FIXED}" >> backup.config

DOCK_AUTOHIDE=`gsettings get org.gnome.shell.extensions.dash-to-dock autohide`
echo "DOCK_AUTOHIDE=${DOCK_AUTOHIDE}" >> backup.config

DOCK_INTELLIHIDE=`gsettings get org.gnome.shell.extensions.dash-to-dock intellihide`
echo "DOCK_INTELLIHIDE=${DOCK_INTELLIHIDE}" >> backup.config

DOCK_POSITION=`gsettings get org.gnome.shell.extensions.dash-to-dock dock-position`
echo "DOCK_POSITION=${DOCK_POSITION}" >> backup.config

SHOW_DATE=`gsettings get org.gnome.desktop.interface clock-show-date`
echo "SHOW_DATE=${SHOW_DATE}" >> backup.config

SOUND_THEME=`gsettings get org.gnome.desktop.sound theme-name`
echo "SOUND_THEME=${SOUND_THEME}" >> backup.config

EXTENSIONS=`gsettings get org.gnome.shell enabled-extensions`
echo "EXTENSIONS=\"${EXTENSIONS}\"" >> backup.config

PLYMOUTH=`ls -l /etc/alternatives/default.plymouth | awk -F' ' '{print $NF}'`
echo "PLYMOUTH=${PLYMOUTH}" >> backup.config
