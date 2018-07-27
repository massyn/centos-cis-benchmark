#!/bin/sh
# ** AUTO GENERATED **

# 6.2.17 - Ensure no duplicate GIDs exist (Scored)

cat /etc/group | cut -f3 -d":" | sort -n | uniq -c | while read x ; do
   [ -z "${x}" ] && break
   set - $x
   if [ $1 -gt 1 ]; then
      if [[ $1 -ne '' ]] ; then
         echo "Duplicate GID ($2): ${groups}"
      fi
      exit 1
   fi
done
