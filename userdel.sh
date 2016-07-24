#!/bin/bash
#########Purpose : To delete user have uid more that 1000#####
#Author : Manzil
#Date : july 22 2016

######### Main Program###########

echo "Deleting below users  having Uid More than 1000"
echo `awk -F: '{if ($3 >= 1001 && $3 <= 2000) { print $1 } }' /etc/passwd` >/tmp/user.txt
cat /tmp/user.txt
for i in `cat /tmp/user.txt`
 do 
 sudo userdel -r $i
 done 
