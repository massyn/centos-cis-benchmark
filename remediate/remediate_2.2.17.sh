#!/bin/sh
# ** AUTO GENERATED **

# 2.2.17 - Ensure rsh server is not enabled (Scored)

variable="rsh|rlogin|rexec"
for i in $(echo $variable | sed "s/|/ /g")
do
    systemctl disable $i
done
