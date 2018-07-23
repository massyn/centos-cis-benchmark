#!/bin/sh
# ** AUTO GENERATED **

# 2.1.6 - Ensure rsh server is not enabled (Scored)

variable="rsh|rlogin|rexec"
for i in $(echo $variable | sed "s/|/ /g")
do
    chkconfig $i off
done
