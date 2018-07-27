#!/bin/sh
# ** AUTO GENERATED **

# 6.2.15 - Ensure all groups in /etc/passwd exist in /etc/group (Scored)

for i in $(cut -s -d: -f4 /etc/passwd | sort -u ); do
   grep -q -P "^.*?:[^:]*:$i:" /etc/group
   if [ $? -ne 0 ]; then
      if [[ $1 -ne '' ]] ; then
         echo "Group $i is referenced by /etc/passwd but does not exist in /etc/group"
      fi
      exit 1
   fi
done
