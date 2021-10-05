#! /bin/bash
FILES="/etc/passwd
/etc/group
/etc/ntp"
for file in $FILES
do 
	if [ ! -e "$file" ]
	then
	 echo "$file = does not exist"
	 echo	
	fi
done
