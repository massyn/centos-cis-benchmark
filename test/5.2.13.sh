#!/bin/sh
# ** AUTO GENERATED **

# 5.2.13 - Ensure SSH LoginGraceTime is set to one minute or less (Scored)

LGT=$(grep "^LoginGraceTime" /etc/ssh/sshd_config | awk {'print $2'})
if [[ $LGT -eq '' || $LGT -gt 60 || $LGT -lt 1 ]]; then
        echo LoginGraceTime is $LGT
        exit 1
fi
