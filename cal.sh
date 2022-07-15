#!/bin/bash


echo
echo "***********************"
echo "Hi I will help you to get calendar"
echo "Hello, $(whoami)"
echo "$(whoami) Please Enter the Year"
read year
echo "Your input is $year"
echo $(cal $year)
