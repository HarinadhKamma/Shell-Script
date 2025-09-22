#!/bin/bash

number=$1
if [ $number -gt 10 ]; then
    echo "enterd number $number is greater than 10"
elif [ $number -eq 10 ];then 
    echo "entered number $number is equal to 10"
else
  echo "entered number $number is less than 10"
fi
 