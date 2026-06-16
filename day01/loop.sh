#!/bin/bash

<< comment
This file is used for looping where i learn about for loop and while loop
comment

for (( i = $2; i<=$3; i++ ));
do
	mkdir "$1$i"
done
