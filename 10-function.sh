#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $ID -ne 0 ]
    then
        echo " installing mysql is failed"
        exit 1
    else
        echo " installing mysql is success "
    fi     
}

if [ $ID -ne 0 ]
then
    echo "please run this script with root access"
    exit 1 # you can give other than 0
else    
    echo "you are root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE