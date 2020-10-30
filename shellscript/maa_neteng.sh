#! /bin/bash
FILE=maa_neteng_own_grp.csv
if [ -f $FILE ];then
 echo "$FILE exists,so removing it and going to create newly with latest content"
 rm -rf $FILE
fi
maa_neteng=`ypcat -k maa.neteng | cut -d" " -f1`
echo "USER,GROUP,PERMISSION,MAA_NETENG" >> maa_neteng_own_grp.csv
map()
{
for i in $maa_neteng
do
 ls -ld /neteng/$i 2> /dev/null | awk '{print $3,$4,$1,$9}' | tr " " ","  >> maa_neteng_own_grp.csv
done
echo "maa_neteng_own_grp_details" | mailx -s "maa_neteng_own_grp_details" -a maa_neteng_own_grp.csv  balasubramanian_k1@dell.com,Thirumal_Thanikachal@Dell.com
}
map
