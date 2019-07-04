#!/bin/bash
echo -e "\e[32m> Stopping apache ...\e[0m"
sudo service apache2 stop #in order to free the 80 port

echo -e "\e[32m> Load environment vars ...\e[0m"
rm .env
cp ./docker/env/compose.dev.env .env
set -o allexport
source .env
set +o allexport

echo -e "\e[32m> Upping containers ...\e[0m"
sudo docker-compose up --remove-orphans -d

echo -e "\e[32m> Removing intermediates containers ...\e[0m"
sudo docker rmi $(sudo docker images -aq -f 'dangling=true')

echo -e "\e[32m> Waiting for services starting ...\e[0m"
sleep 2

echo -e "\e[32m> Docker containers status ...\e[0m"
sudo docker ps -a