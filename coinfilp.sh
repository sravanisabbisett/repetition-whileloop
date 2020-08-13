#!/bin/bash 

count=0
count1=0
head=1
tail=0
valid=true
 
while [ $valid ]
randomCheck=$(( RANDOM%2 ))
do 
	if [ $randomCheck -eq $head ]
	then
   	count=$(( $count+1 ))
	else [ $randomCheck -eq $tail ]
		count1=$(( $count1+1 ))
	fi
	if [[ $count -eq 11 || $count1 -eq 11 ]]
	then
		break
	fi
done


if [ $count -eq 11 ]
then
	echo "Head wins 11 times "
else
	echo "Tail wins 11 times"
fi
