#! /bin/bash
for i in BK*
do
echo "Assigining write permissions to $i"
chmod a+w $i
sleep 1
done
