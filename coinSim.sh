#!/bin/bash -x
heads=0
tails=0
for((i=0;i<5;i++))
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
done
echo "Heads won:" $heads
echo "Tails won:" $tails
