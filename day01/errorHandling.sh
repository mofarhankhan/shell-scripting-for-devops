#!/bin/bash

create_directory(){
	mkdir demo
}

if ! create_directory; then
	echo "The code is being existed as the directory existed"
        exit 1
fi       
	
echo "This shoub not run because it's interrrupted"
