#! /bin/bash
##serverloc=`cat server | awk '{ print substr( $0, $0, 3 ) }'`
loc1=lrk
loc2=pdc
loc3=bdc
for i in `cat server`
do
 serverloc=`echo $i | awk '{ print substr( $0, $0, 3 ) }'`
 echo "The server name is:" $i
 if [ $serverloc == $loc1 ]
 then
  echo "server timezone should be cst"
 elif [ $serverloc == $loc2 ]
 then
  echo "server timezone should be mst"
 elif [ $serverloc == $loc3 ]
 then
  echo "server timezone should be cst"
 else
  echo "server timzone is not required as none of them are matching"
 fi
done 
