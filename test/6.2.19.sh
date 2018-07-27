#!/bin/sh
# ** AUTO GENERATED **

# 6.2.19 - Ensure no duplicate group names exist (Scored)

cat /etc/group | cut -f1 -d":" | sort -n | uniq -c | while read x ; do
   [ -z "${x}" ] && break
   set - $x
   if [ $1 -gt 1 ]; then
      if [[ $1 -ne '' ]] ; then
         gids=`gawk -F: '($1 == n) { print $3 }' n=$2 /etc/group | xargs`
         echo "Duplicate Group Name ($2): ${gids}"
      fi
      exit 1
   fi
done
