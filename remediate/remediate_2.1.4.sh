#!/bin/sh
# ** AUTO GENERATED **

# 2.1.4 - Ensure echo services are not enabled (Scored)

variable="echo-dgram|echo-stream"
for i in $(echo $variable | sed "s/|/ /g")
do
    chkconfig $i off
done
