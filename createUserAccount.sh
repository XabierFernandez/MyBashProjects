#!/bin/bash

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
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
#Force password change on first login
passwd -e ${USER_NAME}
