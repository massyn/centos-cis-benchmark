#!/bin/sh
# ** AUTO GENERATED **

# 6.2.8 - Ensure users' home directories permissions are 750 or more restrictive (Scored)

cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 != "/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user dir; do
   if [ -d "$dir" ]; then
      dirperm=`ls -ld $dir | cut -f1 -d" "`
      if [ `echo $dirperm | cut -c6` != "-" ]; then
         if [[ $1 -ne '' ]] ; then
            echo "Group Write permission set on the home directory ($dir) of user $user"
         fi
         exit 1
      fi
		
      if [ `echo $dirperm | cut -c8` != "-" ]; then
         if [[ $1 -ne '' ]] ; then
            echo "Other Read permission set on the home directory ($dir) of user $user"
         fi

         exit 1
      fi

      if [ `echo $dirperm | cut -c9` != "-" ]; then
         if [[ $1 -ne '' ]] ; then
            echo "Other Write permission set on the home directory ($dir) of user $user"
         fi
         exit 1
      fi

      if [ `echo $dirperm | cut -c10` != "-" ]; then
         if [[ $1 -ne '' ]] ; then
            echo "Other Execute permission set on the home directory ($dir) of user $user"
         fi
         exit 1
      fi
   fi
done
