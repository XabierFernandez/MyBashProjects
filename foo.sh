#!/bin/bash
echo -n 'The time and date are: '
date
echo -n 'The current logged in user is: ' 
who
echo ===================================
#Display user information from the system.
echo "User info for userid: $USER"
echo UID: $UID 
echo HOME: $HOME
echo ===================================
name="xabier"
years=41
echo "$name has $years old"
cat ./test_files/test1.txt
echo This is a test
today=`date +%Y-%m-%d`
echo "Testing backticks, with date: $today"
ls -al ./test_files >> ./test_files/log_$today.txt

var1=23
var2=35
var3=230

if [ $var1 -gt $var2 ]; then
    echo ===================================
    echo var1 greater var2
elif [ $var1 -eq $var2 ] && [ $var1 -gt $var3 ]; then
    echo ===================================
    echo var1 equal var2 and greater than var3
elif [ $var1 -eq $var2 ] && [ $var1 -lt $var3 ]; then
    echo ===================================
    echo var1 equal var2 and less than var3
else
    echo ===================================
    echo var1 less than var2
fi

jump_dir=/home/xabier/Git_repos/MyBashProjects/test_files
if [ -d $jump_dir ]
then
    echo ===================================
    echo "The $jump_dir directory exits"
    ls $jump_dir | more
else
    echo ===================================
    echo "The $jump_dir directory doesn't exist"
fi

if (( $var1 > $var2 ))
 then
    (( var3 = $var1 **2 ))
    echo ===================================
    echo $var3 is the squre of $var1
elif (($var1 < $var2 ))
then
    (( var3 = $var1 / 2 ))
    echo ===================================
    echo $var3 is half of $var1
else
    echo ===================================
    echo $var1 equal to $var2
fi

if [[ $USER == xr* ]]
then
    echo ===================================
    echo Hello $USER
else
    echo ===================================
    echo Hello, who are you
fi

case $USER in
    xabier)
        echo ===================================
        echo Welcome $USER;;
    *)
        echo ===================================
        echo Welcome $USER, you are not xabier;;
esac

arrayMission=( 1 2 3 4 5 6 7 8 9 )

echo ==========================
for i in "${arrayMission[@]}"
do    
    echo "The next mission is MS$i"
done
