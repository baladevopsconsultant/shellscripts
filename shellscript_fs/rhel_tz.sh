#! /bin/bash
rhel_ver=$(awk -F'=' '/VERSION_ID/{ gsub(/"/,""); print $2}' /etc/os-release)
TZ=Asia/Kolkata
rhel_ver_7(){
 Hostname=$(hostname -f) 
 Date=$(date)
 timedatectl set-timezone $TZ
 echo "Timezone set for $Hostname"
 echo "==============================="
 echo $Hostname:$Date
} 

if (( $rhel_ver>=7 && $rhel_ver<8 ))
then
rhel_ver_7
fi
