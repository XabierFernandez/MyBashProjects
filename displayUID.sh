#!/bin/bash

#Display the UID and username of the user executing this script.
#Display if the user is the root user or not.

#Display the UID
echo "$USER your UID is ${UID}"
echo "$(id -un) your UID is ${UID}"
echo "$(whoami) your UID is ${UID}"
echo "`whoami` your UID is ${UID}"
#Display if the user is the root user or not.

if [[ "$UID" -eq 0 ]]
then
  echo 'You are root user'
else
  echo 'You are not root user'
fi 

#
echo "`type -a [[`"