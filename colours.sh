#!/bin/bash

#Red is for ERROR
#Green is for success
#yellow is for skip

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $(id -u) -eq 0 ];then
   echo "User have access to install "
else
   echo "user don't have root access"
   exit 1
fi

# Check for mysql is allready installed or not
dnf list mysql installed mysql
if [ $? -eq 0 ];then
    echo -e "Installing Mysql....$Y is Skipped"
else
    dnf install mysql -y
    InstallCheck $? "Mysql"
fi

# Check for nginx is allready installed or not
dnf list install nginx
if [ $? -eq 0 ];then
     echo -e "Installing nginx....$Y is Skipped"
else
    dnf install nginx -y
    InstallCheck $? "nginx"
fi

# Check for python is allready installed or not
dnf list install python3
if [ $? -eq 0 ];then
        echo -e "Installing python....$Y is Skipped"
else
    dnf install python3 -y
    InstallCheck $? "python3"
fi

InstallCheck(){
if [ $1 -eq 0 ];then
    echo -e "Installaing $2.... $G is Success $N"
else
   echo -e "Installaing $2.... $R is Fail $N"
   exit 1
}