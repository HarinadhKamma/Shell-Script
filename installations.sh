#!/bin/bash

#userid=$(id -u)
if [ $(id -u) -ne 0 ]; then
    echo "user don't have root access to install"
fi
dnf install mysql -y
if [ $? -eq 0 ]; then
    echo "installing  mysql is sucess"
else
    echo "installing mysql is failed"
fi