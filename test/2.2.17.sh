#!/bin/sh
# ** AUTO GENERATED **

# 2.2.17 - Ensure rsh server is not enabled (Scored)

variable="rsh|rlogin|rexec"
for i in $(echo $variable | sed "s/|/ /g")
do
    systemctl is-enabled $i 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
done
