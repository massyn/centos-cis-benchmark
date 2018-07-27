#!/bin/sh
# ** AUTO GENERATED **

# 6.2.13 - Ensure users' .netrc Files are not group or world accessible (Scored)

cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 != "/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user dir; do
   for file in $dir/.netrc; do
      if [ ! -h "$file" -a -f "$file" ]; then 
         fileperm=`ls -ld $file | cut -f1 -d" "`
         if [ `echo $fileperm | cut -c5` != "-" ]; then
            if [[ $1 -ne '' ]] ; then
               echo "Group Read set on $file"
            fi
         exit 1
      fi
      if [ `echo $fileperm | cut -c6` != "-" ]; then
         if [[ $1 -ne '' ]] ; then
            echo "Group Write set on $file"
         fi
         exit 1
      fi
      if [ `echo $fileperm | cut -c7` != "-" ]; then
         if [[ $1 -ne '' ]] ; then
            echo "Group Execute set on $file"
         fi
         exit 1
      fi
      if [ `echo $fileperm | cut -c8` != "-" ]; then
         if [[ $1 -ne '' ]] ; then
            echo "Other Read set on $file"
         fi
         exit 1
      fi
      if [ `echo $fileperm | cut -c9` != "-" ]; then
         if [[ $1 -ne '' ]] ; then
               echo "Other Write set on $file"
            fi
            exit 1
         fi
         if [ `echo $fileperm | cut -c10` != "-" ]; then
            if [[ $1 -ne '' ]] ; then
               echo "Other Execute set on $file"
            fi
            exit 1
         fi
      fi
   done 
done
