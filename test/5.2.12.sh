#!/bin/sh
# ** AUTO GENERATED **

# 5.2.12 - Ensure SSH Idle Timeout Interval is configured (Scored)

CAI=$(grep "^ClientAliveInterval" /etc/ssh/sshd_config | awk {'print $2'})

if [[ $CAI -eq '' || $CAI -lt 1 || $CAI -gt 300 ]]; then
        echo ClientAliveInterval = $CAI
        exit 1
fi

CACM=$(grep "^ClientAliveCountMax" /etc/ssh/sshd_config |awk {'print $2'})

if [[ $CACM -gt 3 ]]; then
        echo ClientAliveCountMax = $CACM
        exit 1
fi
