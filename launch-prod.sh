#!/bin/bash
rm .env
cp ./compose.prod.env .env
set -o allexport
source .env
set +o allexport
sudo docker-compose up -d
