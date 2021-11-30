#!/bin/bash

#This script backs up a user's home directory to /tmp/.
#This script accepts unlimited number of files and directories as arguments to run the test

users=$@

for users in $users
do

user=$(whoami)
input=/home/$users
output=/tmp/${users}_home_$(/var/backup).tar.gz

tar -czf $output $input

echo "Backup of $input is completed!"
echo
echo "Here are the details of the output backup file:"
echo
ls -l $output

then 
echo "$users is a username"

elif [ -d "$users" ]
then 
echo "$users is a directory"

else
echo "$users is another username"
fi 

ls -l $file

done
