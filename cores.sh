#!/bin/bash

# version One
#to print out the number of CPU cores I have in my system

#first we can cheack the server is linux or not

# "/proc" is a directory in the linux system 

# "/proc/cuuinfo" is a file that contain information about the system

#write a if statment 

#now we goona check the cpu in our linux server

#using "hostname" we can know sever hostname
HOSTNAME=$(hostname)

#This command for the date
DATE=$(date "+%y-%m-%d %h:%m:%s")

#using this command we can get number of processor otherwise we can use "nproc" command for that
#"grep" is the command that we can search the key word 
#this commnad "grep" serach the "processor" key word
#PROCESS=$(process "grep -c processor /proc/cpuinfo")

#this commad for "lacpu" we can get impormation about the cpu
# we can get cpu Model Name Socket Thread 
#DETAILS=$(alldetails "lscpu | egrep 'Model name|Socket|Thread|NUMA|CPU\(s\)'")
echo
echo

    
echo "****  that prints out the number of CPU cores you have in your system ***"
    
if [ ! /proc/cpuinfo ]; then
        echo " This is not a Linux server, anble to find the /proc filr"
else
        echo "**** This is a linux system ****"
fi


echo " **** Run Time: $(date) @ $(hostname) ****"
echo
echo "This server $(grep -c processor /proc/cpuinfo) Process"
echo
echo " Those are the CPU details in this server $(lscpu | egrep 'Model name|Socket|Thread|NUMA|CPU\(s\)')"
echo 
echo 
  
