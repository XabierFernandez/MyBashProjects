#!/bin/bash

#Display the user executing this script
echo "Your UID is $UID"

#Display if the user is xabier
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
    echo "Your UID doesn't match, ${UID_TO_TEST_FOR}" 
    #exit 1
else
    echo "Your UID does match, ${UID_TO_TEST_FOR}" 
fi

#Store the user name
USER_NAME=$(id -nu)

#Test if the command succeded
if [[ "${?}" -ne 0 ]]
then
    echo "The id command did not execute succesfully" 
    #exit 1
else
    echo "The id command did execute succesfully" 
fi
echo "Your username is $USER_NAME" 

#Test string text conditional
USER_NAME_TO_TEST_FOR='xabier'
if [[ "${USER_NAME}" == "${USER_NAME_TO_TEST_FOR}" ]]
then
    echo "Your username matches ${USER_NAME_TO_TEST_FOR}"
else
    echo "Your username doesn't matches ${USER_NAME_TO_TEST_FOR}"
    exit 1
fi

exit 0