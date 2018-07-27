#!/bin/sh
# ** AUTO GENERATED **

# 6.2.14 - Ensure no users have .rhosts files (Scored)

cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 != "/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user dir; do
   for file in $dir/.rhosts; do
      if [ ! -h "$file" -a -f "$file" ]; then
         if [[ $1 -ne '' ]] ; then
            echo ".rhosts file in $dir"		
         fi
         exit 1
      fi
   done
done
