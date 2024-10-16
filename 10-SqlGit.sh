#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then 
echo "Error: Please run this script in root access"
exit 1
else
echo "Your are root user"
fi
yum install mysql -y
if [#! -ne 0]
then 
echo "Error: installing MYSQL is failed"
else
echo "MYSQL Installation completed"
fi
yum install git -y
if [#! -ne 0]
then 
echo "Error: installing GIT is failed"
else
echo "GIT Installation completed"
fi
