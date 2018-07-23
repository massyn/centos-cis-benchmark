#!/bin/sh
# ** AUTO GENERATED **

# 2.1.1 - Ensure chargen services are not enabled (Scored)

variable="chargen-dgram|chargen-stream"
for i in $(echo $variable | sed "s/|/ /g")
do
    chkconfig $i off
done
