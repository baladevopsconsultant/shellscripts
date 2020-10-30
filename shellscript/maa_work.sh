#! /bin/bash
FILE=maa_work_own_grp.csv
if [ -f $FILE ];then
 echo "$FILE exists,so removing it and going to create newly with latest content"
 rm -rf $FILE
fi
maa_work=`ypcat -k maa.work | cut -d" " -f1`
echo "USER,GROUP,PERMISSION,MAA_WORK" >> maa_work_own_grp.csv
map()
{
for i in $maa_work
do
 ls -ld /work/$i 2> /dev/null | awk '{print $3,$4,$1,$9}' | tr " " ","  >> maa_work_own_grp.csv
done
echo "maa_work_own_grp_details" | mailx -s "maa_work_own_grp_details" -a maa_work_own_grp.csv  balasubramanian_k1@dell.com,Thirumal_Thanikachal@Dell.com
}
map
