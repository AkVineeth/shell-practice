#!/bin/bash

USERID = $(id -u)

if [ $USERID -ne 0 ]
then
   echo "ERROR:: Please run this script with root access"
   exit 1
else
  echo "You are not running with root access"
fi

dnf list installed mysql
if [ $USERID -ne 0 ]
then
  echo "MYSQL is not insatlled going to install it"
  dnf install mysql -y
  if [ $? -eq 0 ] 
  then
    echo "Installing MYSQL is Successful"
  else
    echo "Installing MYSQL is Failure"
    exit 1
  fi
  else
    echo " MYSQL is installed ..Nothing to do"

dnf list installed python
if [ $USERID -ne 0 ]
then
 echo "Python is not insatlled going to install it"
  dnf install python -y
  if [ $? -eq 0 ] 
  then
    echo "Installing Python is Successful"
  else
   echo "Installing Python is Failure"
   exit 1
  fi
  else
  echo " Python is installed ..Nothing to do"
dnf list installed nginx
if [ $USERID -ne 0 ]
 then
  echo "Nginx is not insatlled going to install it"
   dnf install nginx -y
   if [ $? -eq 0 ] 
    then
      echo "Installing Nginx is Successful"
    else
      echo "Installing Nginx is Failure"
      exit 1
   fi
   else
    echo " Nginx is installed ..Nothing to do"
fi
   