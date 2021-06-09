#!/bin/bash -x
result=$((RANDOM%2))
if [ $result -eq 1 ]
then
	echo Tails won
else
	echo Heads won
fi
