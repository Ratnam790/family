#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "you are not in root user"
else
    echo "you are in root user"
fi

dnf install mysql -y
echo "successfully installed mysql"