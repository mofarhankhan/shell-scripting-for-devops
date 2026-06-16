#!/bin/bash

<< disclaimer
Deploy a django app 
and handle the code erro
disclaimer

code_clone(){
	echo "Project cloning...."
	git clone https://github.com/mofarhankhan/django-notes-app.git
}

install_requirements(){
	echo "Installing dependencies..."
	sudo apt install docker.io -y
	sudo apt install nginx
}

required_restarts(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy(){
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}


echo "*****************DEPLOYMENT STARTED***********************"

if ! code_clone; then
	echo "The code directory already exist"
	cd django-notes-app
fi
if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi
if ! required_restarts; then
	echo "System fault identified"
	exit 1
fi
if ! deploy; then
	echo "Deployment failed...."
	# sendmail
	exit 1	
fi

echo "****************DEPLOYMENY DONE***********************"

