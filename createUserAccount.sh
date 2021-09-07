#!/bin/bash

if [[ "${UID}" -ne 0]]
then
  echo "You must log on as root or use sudo commad!"
  exit 1
fi
#Create user account
#Ask for user name 
read -p 'Enter the username to create: ' USER_NAME
#Ask for real name
read -p 'Enter the name of the person who this account is for: ' COMMENT
#Ask for password
read -p 'Enter the password to use for the account: ' PASSWORD
#Create user
useradd -c "${COMMENT}" -m ${USER_NAME}
#Set password for user
echo "${USER_NAME}:${PASSWORD}" | chpasswd 
#Force password change on first login
passwd -e ${USER_NAME}
