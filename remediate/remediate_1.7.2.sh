#!/bin/sh
# ** AUTO GENERATED **

# 1.7.2 - Ensure GDM login banner is configured (Scored)

mkdir /etc/dconf
mkdir /etc/dconf/profile
echo "user-db:user" >> /etc/dconf/profile/gdm
echo "system-db:gdm" >> /etc/dconf/profile/gdm
echo "file-db:/usr/share/gdm/greeter-dconf-defaults" >> /etc/dconf/profile/gdm

mkdir /etc/dconf/db
mkdir /etc/dconf/db/gdm.d/

echo "[org/gnome/login-screen]" >> /etc/dconf/db/gdm.d/CIS.conf
echo "banner-message-enable=true" >> /etc/dconf/db/gdm.d/CIS.conf
echo "banner-message-text='Authorised Users Only'" >> /etc/dconf/db/gdm.d/CIS.conf
