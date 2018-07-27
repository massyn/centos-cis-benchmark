#!/bin/sh
# ** AUTO GENERATED **

# 1.7.2 - Ensure GDM login banner is configured (Scored)

rpm -q gdm | grep -Eq "package gdm is not installed"
if [[ $? -ne 0 ]]; then

        if [[ -f /etc/dconf/profile/gdm ]]; then
                cat /etc/dconf/profile/gdm | grep -E "user-db:user" || exit $?
                cat /etc/dconf/profile/gdm | grep -E "system-db:gdm" || exit $?
                cat /etc/dconf/profile/gdm | grep -E "file-db:/usr/share/gdm/greeter-dconf-defaults" || exit $?

    if [[ $(ls -A /etc/dconf/db/gdm.d/) ]] ; then
                        grep "banner-message-enable=true" /etc/dconf/db/gdm.d/* || exit $?
                else
                        exit 1
                fi
        else
                exit 1
        fi
fi
