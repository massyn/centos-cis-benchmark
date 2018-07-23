#!/bin/sh
# ** AUTO GENERATED **

# 5.2.5 - Ensure SSH MaxAuthTries is set to 4 or less (Scored)

MAT=$(grep "^MaxAuthTries" /etc/ssh/sshd_config |awk {'print $2'})

if [[ $MAT -eq '' || $MAT -gt 4 ]]; then
        echo MaxAuthTries = $MAT
        exit 1
fi
