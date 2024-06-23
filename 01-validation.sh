#!/bin/bash

USERID=$(id -u)

if [ $USERID -lt 0 ]
then 
    echo "please turn on the root user for software"
else
    echo "you are in root user"
fi

dnf install mysql -y
echo "successfully installed mysql"