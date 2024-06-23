#!/bin/bash

USERID=$(id -u)
TIME_STAMP=$(date %F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$TIME_STAMP-$SCRIPT_NAME.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is ....FAILURE"
        exit 1
    else
        echo "$2 is.....SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "you are not in root user"
else
    echo "you are in root user"
fi


dnf install mysql -y
VALIDATE $? "INSTALLing MYSQL"