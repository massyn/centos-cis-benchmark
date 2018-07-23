#!/bin/sh
# ** AUTO GENERATED **

# 2.1.2 - Ensure daytime services are not enabled (Scored)

variable="daytime-dgram|daytime-stream"
for i in $(echo $variable | sed "s/|/ /g")
do
    chkconfig $i off
done
