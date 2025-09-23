#!/bin/bash

echo "enter the number"
read number
if [ $((number % 2)) -eq 0]; then
    echo "enterd number $number is even"
else
    echo "entered number $number is odd"
fi