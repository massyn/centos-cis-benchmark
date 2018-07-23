#!/bin/sh
# ** AUTO GENERATED **

# 6.1.7 - Ensure permissions on /etc/shadow- are configured (Scored)

file=/etc/shadow-
perm="^0 0 0"

p=$(echo $perm | awk {'print $1'} | sed "s/[^0-9]//g" )
o=$(echo $perm | awk {'print $2'})
g=$(echo $perm | awk {'print $3'})

touch $file

if [[ $o -eq 0 && $g -eq 0 ]]; then
        chown root:root $file
fi

chmod $p $file

