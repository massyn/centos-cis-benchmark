#!/bin/sh
# ** AUTO GENERATED **

# 6.2.6 - Ensure root PATH Integrity (Scored)

export debug=$1

if [ "`echo $PATH | grep ::`" != "" ]; then
	if [[ $1 -ne '' ]] ; then
		echo "Empty Directory in PATH (::)"
	fi
	exit 1
fi
if [ "`echo $PATH | grep :$`" != "" ]; then
	if [[ $1 -ne '' ]] ; then
		echo "Trailing : in PATH"
	fi
	exit 1
fi

p=`echo $PATH | sed -e 's/::/:/' -e 's/:$//' -e 's/:/ /g'`
set -- $p
while [ "$1" != "" ]; do
   if [ "$1" = "." ]; then
      if [[ $1 -ne '' ]] ; then
         echo "PATH contains ."
      fi
      exit 1
      shift
      continue
   fi
   if [ -d $1 ]; then
      dirperm=`ls -ldH $1 | cut -f1 -d" "`
      if [ `echo $dirperm | cut -c6` != "-" ]; then
         if [[ $1 -ne '' ]] ; then
            echo "Group Write permission set on directory $1"
         fi
      exit 1
      fi
      if [ `echo $dirperm | cut -c9` != "-" ]; then
         if [[ $1 -ne '' ]] ; then
            echo "Other Write permission set on directory $1"
         fi
         exit 1
      fi
      dirown=`ls -ldH $1 | awk '{print $3}'`
      if [ "$dirown" != "root" ] ; then
         if [[ $1 -ne '' ]] ; then
            echo $1 is not owned by root
         fi
         exit 1
      fi
   else
      if [[ $debug -ne '' ]] ; then
         echo $1 is not a directory
      fi
      exit 1
   fi	
   shift
done
