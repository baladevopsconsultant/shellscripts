#! /bin/bash
c=0
for i in BK.*   ####Where the files would be BK.1,BK>2 and BK>3
do 
 echo $i
 c=`expr $c + 1`
 mv $i ${i%.*}$c.txt
done
