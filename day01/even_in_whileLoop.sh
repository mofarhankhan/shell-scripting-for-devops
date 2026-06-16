#!/bin/bash


while [[ $num%2==0 && $num -le 10  ]]
do
	echo "$num"
	num=$((num+2))
done


