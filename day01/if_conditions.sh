#!/bin/bash

#echo "This is if condition file , where i learn evrything about conditional"

read -p "Enter your bandi : " bandi
read -p "Enter the % : " pyaar

if [[ $bandi == "AAAA" ]];
then
	echo "Banda is loyal"
elif [[ $pyaar -ge 100 ]];
then
	echo "The banda is loyal"
else
	echo "Farhan is not loyal"
fi
