#!/bin/sh
# ** AUTO GENERATED **

# 6.2.12 - Ensure no users have .netrc files (Scored)

cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 != "/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user dir; do
   if [ ! -h "$dir/.netrc" -a -f "$dir/.netrc" ]; then
      if [[ $1 -ne '' ]] ; then
         echo ".netrc file $dir/.netrc exists"
      fi
      exit 1
   fi
done
