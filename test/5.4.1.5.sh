#!/bin/sh
# ** AUTO GENERATED **

# 5.4.1.5 - Ensure all users last password change date is in the past (Scored)

NOW=$(date +%s)
for i in $(egrep ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1 ); do
        UPA=$(chage --list $i | grep "Last password change" | cut -d: -f2)
        EPOCH=$(date -d "$UPA" +%s)

        if [[ $EPOCH -gt $NOW ]]; then
                echo Password change in future - $i - $UPA
                exit 1
        fi
done
