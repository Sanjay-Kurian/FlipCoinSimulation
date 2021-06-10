#!/bin/bash -x
heads=0
tails=0
min_difference=2
target_count=21
while [ 1 ]
do
	result=$((RANDOM%2))
	if [ $result -eq 1 ]
	then
		((tails++))
		echo Tails won
	else
		echo Heads won
		((heads++))
	fi
	if [ $heads -gt $tails ]
	then
		diff=$(($heads-$tails))
	else
		diff=$(($tails-$heads))
	fi
	if [[ $heads -eq $target_count && $diff -ge $min_difference ]]
	then
		echo "Heads won by" $diff
		break
	elif [[ $tails -eq $target_count && $diff -ge $min_difference ]]
		then
		echo "Tails won by" $diff
		break
	fi
done
echo "Heads won:" $heads
echo "Tails won:" $tails
