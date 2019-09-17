#!/bin/bash

# /usr/local/bin/createdatabase
# chmod +x createdatabase

dbusername=$1
newdatabasename=$2
newusername=$3

if [ "$dbusername" == '' ] || [ "$newdatabasename" == '' ] || [ "$newusername" == '' ]
	then
		echo $"Usage: createdatabase dbusername newdatabasename newusername"
		echo $"Eq: createdatabase root db1 user1"
		exit 1;
fi

echo -n "Enter \"$newusername\" Password: "
read -s newpassword
echo
## echo $newpassword

echo "\"$dbusername\" user for create database"
mysql -u $dbusername -p -e "CREATE DATABASE $newdatabasename; GRANT ALL PRIVILEGES ON $newdatabasename.* TO '$newusername'@'localhost' IDENTIFIED BY '$newpassword'; FLUSH PRIVILEGES;"

echo "\"$dbusername\" user for insert"
mysql -u root -p $newdatabasename < $newdatabasename.sql
