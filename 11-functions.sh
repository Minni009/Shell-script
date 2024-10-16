#!/bin/bash
ID=$(id -u)

VALIDATE() {
    if [$1 -ne 0]
    then 
      echo "Error: installing MYSQL is failed"
    else
      echo "MYSQL Installation completed"
    fi
}
if [ $ID -ne 0 ]
then 
  echo "Error: Please run this script in root access"
  exit 1
else
  echo "Your are root user"
fi
yum install mysql -y

VALIDATE  $? "Installing MYSQL"

yum install git -y

VALIDATE $? "Installing GIT"


