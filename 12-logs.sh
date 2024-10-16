
#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE() {
    if [ $1 -ne 0 ]
    then 
      echo " $2 failure"
    else
      echo "$2 succes"
    fi
}
if [ $ID -ne 0 ]
then 
  echo "Error: Please run this script in root access"
  exit 1
else
  echo "Your are root user"
fi
yum install mysql -y &>> $LOGFILE

VALIDATE  $? "Installing MYSQL" 

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT" 
