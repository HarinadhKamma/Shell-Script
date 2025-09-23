#!/bin/bash

#userid=$(id -u)
if [ $(id -u) -ne 0 ]; then
    echo "user don't have root access to install"
    exit 1
fi
dnf install mysql -y
InstallCheck $? "MySql"

dnf install nginx -y
InstallCheck $? "nginx"

dnf install python3 -y
InstallCheck $? "python"

InstallCheck( ){
    if [ $1 -eq 0 ]
     echo "installing  $1 is sucess"
     exit 1  
        else
     echo "installing $2 is failed"
    fi
}