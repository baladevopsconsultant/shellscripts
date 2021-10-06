#! /bin/bash
cd /home
mkdir junos
for i in *
do
CHK=$(grep -c "/home/$i" /etc/passwd)
if [ $CHK -ge 1 ]
then
echo "$i is assigned to the user"
else
echo "$i is not assigned to the user"
fi
done
