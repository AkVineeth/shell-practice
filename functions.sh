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
   if [ $? -eq 0] 
    then
      echo "Installing MYSQL is Successful"
    else
      echo "Installing MYSQL is Failure"
      exit 1
   fi
   else
    echo " MYSQL is installed ..Nothing to do"
fi
   