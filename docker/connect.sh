#!/bin/bash
CONTAINER_NAME=$1
CONTAINER_NAME=${CONTAINER_NAME:=certy-php}
echo -e "\e[32m> Connecting to your container ...\e[0m"
sudo docker exec -ti ${CONTAINER_NAME} /bin/bash
