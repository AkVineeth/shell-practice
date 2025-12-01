#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "ERROR:: Please run the script with root user"
  exit 1
else
  echo "You're already a root user"
fi 

dnf install mysql -y
if [ $? -eq 0 ]
then
 echo "Installing MYSQL is Successful.."
else
 echo "Installing MySQL is Failure.."
 exit 1
fi  
 else 
   echo "Mysql is already installed.. Nothing to do."