#!/bin/sh
# ** AUTO GENERATED **

# 2.1.5 - Ensure time services are not enabled (Scored)

variable="time-dgram|time-stream"
for i in $(echo $variable | sed "s/|/ /g")
do
    chkconfig $i off
done
