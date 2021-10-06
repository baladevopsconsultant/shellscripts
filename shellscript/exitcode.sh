#! /bin/bash
arr=( 1 2 3 )
for i in ${arr[@]}
do
echo $i
	if [ $i -eq 2 ]
	then
	echo $i
	exit 1
	fi
done
