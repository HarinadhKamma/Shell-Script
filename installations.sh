#!/bin/bash

user_id=$(id -u)
if[ $user_id -ne o ]; then
    echo "user don't have root access to install"
fi
dnf install mysql -y
if[ $? -eq 0 ]; then
    echo "installing  mysql is sucess"
else
    echo "installing mysql is failed"
fi