#!/bin/bash
echo

ls

echo "Enter the name of the file you want to use:"

read -r file

for i in $(cat $file); #reads the file that user wants use

do
	randnum=$(shuf -i 10-99 -n 1) #generates random number from 10 to 99
	useradd -m  "$i$randnum"  #creates the new users with the random number
#	usermod -c "$i" "$i$randnum"
	echo "user $i has been added successfully"
	echo "temp4now" | passwd --stdin $i #sets passwords for all users to temp4now

done



