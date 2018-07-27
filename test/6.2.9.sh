#!/bin/sh
# ** AUTO GENERATED **

# 6.2.9 - Ensure users own their home directories (Scored)

cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 != "/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user dir; do
   if [ -d "$dir" ]; then
      owner=$(stat -L -c "%U" "$dir")
      if [ "$owner" != "$user" ]; then
         if [[ $1 -ne '' ]] ; then
            echo "The home directory ($dir) of user $user is owned by $owner."
         fi
         exit 1
      fi
   fi
done
