#!/bin/bash
rm .env
cp ./compose.ci.env .env
set -o allexport
source .env
set +o allexport
sudo docker-compose up -d php
