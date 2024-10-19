#!/bin/bash
file=/etc/passwd
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $file]
then
   echo -e " $R source directory: $SOURCE_DIR does not exists. $N"
fi

while IFS=":" read -r username password userid groupid userfullname home_directory Shell_Path
do
  echo "username: $username"
  echo "userid: $userid"
  echo "groupid: $groupid"
  echo "........................................"
done < $file