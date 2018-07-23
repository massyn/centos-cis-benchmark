#!/bin/sh
# ** AUTO GENERATED **

# 2.1.3 - Ensure discard services are not enabled (Scored)

variable="discard-dgram|discard-stream"
for i in $(echo $variable | sed "s/|/ /g")
do
    chkconfig $i off
done
