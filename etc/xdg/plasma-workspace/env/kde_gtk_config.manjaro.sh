#!/bin/bash

# Defaults for Cleanjaro KDE
GTK2_DATADIR=/usr/share/themes/
GTK3_HOME_CONFDIR="$HOME/.config/gtk-3.0/"
GTK3_DATADIR=/usr/share/themes/

# Files used by kde-gtk-config
GTK2_THEME_RC="$HOME/.gtkrc-2.0"
GTK3_THEME_RC="$HOME/.config/gtk-3.0/settings.ini"

# Create "gtkrc-2.0" file if it doesn't exist
if [ ! -e "$GTK2_THEME_RC" ]; then
  # Dark
  if [ -e "$GTK2_DATADIR/Breeze-Dark/gtk-2.0/gtkrc" ] ; then
    THEME="Breeze-Dark"
    ICON_THEME="breeze-dark"
  # else use Adwaita engine
  elif [ -e "$GTK2_DATADIR/Adwaita/gtk-2.0/gtkrc" ] ; then
    THEME="Adwaita"
    ICON_THEME="Adwaita"
  fi
  if [ -n "$THEME" ]; then
    cp -f /usr/share/kde-gtk-config/gtkrc-2.0.template "$GTK2_THEME_RC"
    sed -i -e "s,@@THEME_NAME@@,$THEME," "$GTK2_THEME_RC"
    sed -i -e "s,@@ICON_THEME@@,$ICON_THEME," "$GTK2_THEME_RC"
  fi
fi

# GTK3
# Create "settings.ini" file if it doesn't exist
if [ ! -e "$GTK3_THEME_RC" ]; then
  # Dark
  if [ -e "$GTK3_DATADIR/Breeze-Dark/gtk-3.0/gtk.css" ] ; then
    THEME="Breeze-Dark"
    ICON_THEME="breeze-dark"
  # else use Adwaita
  elif [ -e "$GTK3_DATADIR/Adwaita/gtk-3.0/gtk.css" ] ; then
    THEME="Adwaita"
    ICON_THEME="Adwaita"
  fi
  if [ -n "$THEME" ]; then
    mkdir -p "$GTK3_HOME_CONFDIR"
    cp -f /usr/share/kde-gtk-config/gtk3-settings.ini.template "$GTK3_THEME_RC"
    sed -i -e "s,@@THEME_NAME@@,$THEME," "$GTK3_THEME_RC"
    sed -i -e "s,@@ICON_THEME@@,$ICON_THEME," "$GTK3_THEME_RC"
  fi
fi
 
