#! /bin/bash
login (){
 PASS=`cat .secret.lck | openssl enc -base64 -d -aes-256-cbc -nosalt -pass pass:garbageKey`
 for i in `cat servers`
 do
  sshpass -p $PASS ssh root@$i -t 'echo "listing the files"; echo '\ ';ls;echo '\ ';echo "Present working directory";echo '\ ';pwd'
 done
}
login
