#!/bin/bash

function if_loyal(){
	read -p "$1 ne mud kar kise dekh ?? : " bandi
	read -p "$1 ka payar % kitna hai ?? : " pyaar
	if [[ $bandi == "babita bhabhi" ]];
	then
		echo "$1 is loyal for babita"
	elif [[ $pyaar -ge 100 ]];
	then
		echo "$1 is also loyal for babita"
	else
		echo "$1 is not loyal for babita"
	fi
}

if_loyal "lol"
