#!/bin/sh
# ** AUTO GENERATED **

# 6.1.8 - Ensure permissions on /etc/group- are configured (Scored)

file=/etc/group-
perm="644 0 0"

p=$(echo $perm | awk {'print $1'} | sed "s/[^0-9]//g" )
o=$(echo $perm | awk {'print $2'})
g=$(echo $perm | awk {'print $3'})

touch $file

if [[ $o -eq 0 && $g -eq 0 ]]; then
        chown root:root $file
fi

chmod $p $file

