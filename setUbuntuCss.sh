#!/bin/bash
source /home/johnazhang/UImod/ui.config

bak=$IFS
IFS=$'\n'
i=0
file=$1
touch temp
awk '{print $1}' $file > temp
while read line
do
	let i+=1
	if [ x"$line" == x"#lockDialogGroup" ]
	then
		break
	fi
done < temp

let i+=1
sed -i "${i}c background: #2c001e url(${LOGIN_URI:-"file:///usr/share/backgrounds/login.jpg"});" $file
sed -i "${i}s/^/    /" $file
IFS=$bak
rm temp
