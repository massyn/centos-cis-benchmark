#!/bin/sh
# ** AUTO GENERATED **

# 5.4.1.1 - Ensure password expiration is 365 days or less (Scored)

PMD=$(grep -E "^PASS_MAX_DAYS" /etc/login.defs | awk {'print $2'})

if [[ $PMD -eq '' || $PMD -gt 365 ]]; then
        echo PASS_MAX_DAYS = $PMD
        exit 1
fi

for i in $(egrep ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1 ); do
        UPA=$(chage --list $i | grep "Maximum number of days between password change" | cut -d: -f2)
        if [[ $UPA -gt 365 ]]; then
                echo $i maximum days between password change = $UPA
                exit 1
        fi
done
