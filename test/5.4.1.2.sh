#!/bin/sh
# ** AUTO GENERATED **

# 5.4.1.2 - Ensure minimum days between password changes is 7 or more (Scored)

PMD=$(grep -E "^PASS_MIN_DAYS" /etc/login.defs | awk {'print $2'})

if [[ $PMD -eq '' || $PMD -lt 7 ]]; then
        echo PASS_MIN_DAYS = $PMD
        exit 1
fi

for i in $(egrep ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1 ); do
        UPA=$(chage --list $i | grep "Minimum number of days between password change" | cut -d: -f2)
        if [[ $UPA -lt 7 ]]; then
                echo $i days between password change = $UPA
                exit 1
        fi
done
